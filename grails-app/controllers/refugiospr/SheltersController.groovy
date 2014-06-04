package refugiospr



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SheltersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Shelters.list(params), model:[sheltersInstanceCount: Shelters.count()]
    }

    def show(Shelters sheltersInstance) {
        respond sheltersInstance
    }

    def map() {}

    def create() {
        respond new Shelters(params)
    }

    @Transactional
    def save(Shelters sheltersInstance) {
        if (sheltersInstance == null) {
            notFound()
            return
        }

        if (sheltersInstance.hasErrors()) {
            respond sheltersInstance.errors, view:'create'
            return
        }

        sheltersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shelters.label', default: 'Shelters'), sheltersInstance.id])
                redirect sheltersInstance
            }
            '*' { respond sheltersInstance, [status: CREATED] }
        }
    }

    def edit(Shelters sheltersInstance) {
        respond sheltersInstance
    }

    @Transactional
    def update(Shelters sheltersInstance) {
        if (sheltersInstance == null) {
            notFound()
            return
        }

        if (sheltersInstance.hasErrors()) {
            respond sheltersInstance.errors, view:'edit'
            return
        }

        sheltersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Shelters.label', default: 'Shelters'), sheltersInstance.id])
                redirect sheltersInstance
            }
            '*'{ respond sheltersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Shelters sheltersInstance) {

        if (sheltersInstance == null) {
            notFound()
            return
        }

        sheltersInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Shelters.label', default: 'Shelters'), sheltersInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shelters.label', default: 'Shelters'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
