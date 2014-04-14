import uk.ac.shu.webarch.trainingapp.* 
//use all classes from that package

class BootStrap {

    def init = { servletContext ->
    // Global System Roles
      def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
      def editorRole = Role.findByAuthority('ROLE_EDITOR') ?: new Role(authority: 'ROLE_EDITOR').save(failOnError: true)
      def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

      log.debug("Create admin user...");
      def adminUser = User.findByUsername('admin')
      if ( ! adminUser ) {
        log.error("No admin user found, create");
        adminUser = new User(
                          username: 'admin',
                          password: 'admin',
                          display: 'Admin',
                          email: 'admin@localhost.localdomain',
                          enabled: true).save(failOnError: true)
      }

      if (!adminUser.authorities.contains(adminRole)) {
        log.debug("Granting admin user admin role");
        UserRole.create adminUser, adminRole
      }

      if (!adminUser.authorities.contains(userRole)) {
        log.debug("Granting admin user user role");
        UserRole.create adminUser, userRole
      }
    }
        
    def destroy = {
    }
   
}
