package uk.ac.shu.webarch.trainingapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
//security plugin -
import grails.plugin.springsecurity.annotation.Secured


@Transactional(readOnly = true)
class TrainingsessionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
//User can view/edit page only if logged in or remembered
	@Secured(['ROLE_USER','IS_AUTHENTICATED_REMEMBERED'])

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Trainingsession.list(params), model:[trainingsessionInstanceCount: Trainingsession.count()]
    }

    def show(Trainingsession trainingsessionInstance) {
        respond trainingsessionInstance
    }

    def create() {
        respond new Trainingsession(params)
    }

    @Transactional
    def save(Trainingsession trainingsessionInstance) {
        if (trainingsessionInstance == null) {
            notFound()
            return
        }

        if (trainingsessionInstance.hasErrors()) {
            respond trainingsessionInstance.errors, view:'create'
            return
        }

        trainingsessionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trainingsessionInstance.label', default: 'Trainingsession'), trainingsessionInstance.id])
                redirect trainingsessionInstance
            }
            '*' { respond trainingsessionInstance, [status: CREATED] }
        }
    }

    def edit(Trainingsession trainingsessionInstance) {
        respond trainingsessionInstance
    }

    @Transactional
    def update(Trainingsession trainingsessionInstance) {
        if (trainingsessionInstance == null) {
            notFound()
            return
        }

        if (trainingsessionInstance.hasErrors()) {
            respond trainingsessionInstance.errors, view:'edit'
            return
        }

        trainingsessionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Trainingsession.label', default: 'Trainingsession'), trainingsessionInstance.id])
                redirect trainingsessionInstance
            }
            '*'{ respond trainingsessionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Trainingsession trainingsessionInstance) {

        if (trainingsessionInstance == null) {
            notFound()
            return
        }

        trainingsessionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Trainingsession.label', default: 'Trainingsession'), trainingsessionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingsessionInstance.label', default: 'Trainingsession'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
