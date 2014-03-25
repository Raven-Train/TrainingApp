package uk.ac.shu.webarch.trainingapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SessionexerciseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sessionexercise.list(params), model:[sessionexerciseInstanceCount: Sessionexercise.count()]
    }

    def show(Sessionexercise sessionexerciseInstance) {
        respond sessionexerciseInstance
    }

    def create() {
        respond new Sessionexercise(params)
    }

    @Transactional
    def save(Sessionexercise sessionexerciseInstance) {
        if (sessionexerciseInstance == null) {
            notFound()
            return
        }

        if (sessionexerciseInstance.hasErrors()) {
            respond sessionexerciseInstance.errors, view:'create'
            return
        }

        sessionexerciseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sessionexerciseInstance.label', default: 'Sessionexercise'), sessionexerciseInstance.id])
                redirect sessionexerciseInstance
            }
            '*' { respond sessionexerciseInstance, [status: CREATED] }
        }
    }

    def edit(Sessionexercise sessionexerciseInstance) {
        respond sessionexerciseInstance
    }

    @Transactional
    def update(Sessionexercise sessionexerciseInstance) {
        if (sessionexerciseInstance == null) {
            notFound()
            return
        }

        if (sessionexerciseInstance.hasErrors()) {
            respond sessionexerciseInstance.errors, view:'edit'
            return
        }

        sessionexerciseInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sessionexercise.label', default: 'Sessionexercise'), sessionexerciseInstance.id])
                redirect sessionexerciseInstance
            }
            '*'{ respond sessionexerciseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sessionexercise sessionexerciseInstance) {

        if (sessionexerciseInstance == null) {
            notFound()
            return
        }

        sessionexerciseInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sessionexercise.label', default: 'Sessionexercise'), sessionexerciseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sessionexerciseInstance.label', default: 'Sessionexercise'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
