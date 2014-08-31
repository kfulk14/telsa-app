package tesla



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpecController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Spec.list(params), model:[specInstanceCount: Spec.count()]
    }

    def show(Spec specInstance) {
        respond specInstance
    }

    def create() {
		
		
		
        respond new Spec(params)
		
	
		
    }

    @Transactional
    def save(Spec specInstance) {
        if (specInstance == null) {
            notFound()
            return
        }

        if (specInstance.hasErrors()) {
            respond specInstance.errors, view:'create'
            return
        }

        specInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'spec.label', default: 'Spec'), specInstance.id])
                redirect specInstance
            }
            '*' { respond specInstance, [status: CREATED] }
        }
    }

    def edit(Spec specInstance) {
        respond specInstance
    }

    @Transactional
    def update(Spec specInstance) {
        if (specInstance == null) {
            notFound()
            return
        }

        if (specInstance.hasErrors()) {
            respond specInstance.errors, view:'edit'
            return
        }

        specInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Spec.label', default: 'Spec'), specInstance.id])
                redirect specInstance
            }
            '*'{ respond specInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Spec specInstance) {

        if (specInstance == null) {
            notFound()
            return
        }

        specInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Spec.label', default: 'Spec'), specInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'spec.label', default: 'Spec'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
