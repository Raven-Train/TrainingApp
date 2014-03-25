package uk.ac.shu.webarch.trainingapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrainingSessionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TrainingSession.list(params), model:[trainingSessionInstanceCount: TrainingSession.count()]
    }

    def show(TrainingSession trainingSessionInstance) {
        respond trainingSessionInstance
    }

    def create() {
        respond new TrainingSession(params)
    }

    @Transactional
    def save(TrainingSession trainingSessionInstance) {
        if (trainingSessionInstance == null) {
            notFound()
            return
        }

        if (trainingSessionInstance.hasErrors()) {
            respond trainingSessionInstance.errors, view:'create'
            return
        }

        trainingSessionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trainingSessionInstance.label', default: 'TrainingSession'), trainingSessionInstance.id])
                redirect trainingSessionInstance
            }
            '*' { respond trainingSessionInstance, [status: CREATED] }
        }
    }

    def edit(TrainingSession trainingSessionInstance) {
        respond trainingSessionInstance
    }

    @Transactional
    def update(TrainingSession trainingSessionInstance) {
        if (trainingSessionInstance == null) {
            notFound()
            return
        }

        if (trainingSessionInstance.hasErrors()) {
            respond trainingSessionInstance.errors, view:'edit'
            return
        }

        trainingSessionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrainingSession.label', default: 'TrainingSession'), trainingSessionInstance.id])
                redirect trainingSessionInstance
            }
            '*'{ respond trainingSessionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrainingSession trainingSessionInstance) {

        if (trainingSessionInstance == null) {
            notFound()
            return
        }

        trainingSessionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrainingSession.label', default: 'TrainingSession'), trainingSessionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingSessionInstance.label', default: 'TrainingSession'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
