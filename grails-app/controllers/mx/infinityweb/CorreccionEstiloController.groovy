package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CorreccionEstiloController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CorreccionEstilo.list(params), model:[correccionEstiloInstanceCount: CorreccionEstilo.count()]
    }

    def show(CorreccionEstilo correccionEstiloInstance) {
        respond correccionEstiloInstance
    }

    def create() {
        respond new CorreccionEstilo(params)
    }

    @Transactional
    def save(CorreccionEstilo correccionEstiloInstance) {
        if (correccionEstiloInstance == null) {
            notFound()
            return
        }

        if (correccionEstiloInstance.hasErrors()) {
            respond correccionEstiloInstance.errors, view:'create'
            return
        }

        correccionEstiloInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'correccionEstilo.label', default: 'CorreccionEstilo'), correccionEstiloInstance.id])
                redirect correccionEstiloInstance
            }
            '*' { respond correccionEstiloInstance, [status: CREATED] }
        }
    }

    def edit(CorreccionEstilo correccionEstiloInstance) {
        respond correccionEstiloInstance
    }

    @Transactional
    def update(CorreccionEstilo correccionEstiloInstance) {
        if (correccionEstiloInstance == null) {
            notFound()
            return
        }

        if (correccionEstiloInstance.hasErrors()) {
            respond correccionEstiloInstance.errors, view:'edit'
            return
        }

        correccionEstiloInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CorreccionEstilo.label', default: 'CorreccionEstilo'), correccionEstiloInstance.id])
                redirect correccionEstiloInstance
            }
            '*'{ respond correccionEstiloInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CorreccionEstilo correccionEstiloInstance) {

        if (correccionEstiloInstance == null) {
            notFound()
            return
        }

        correccionEstiloInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CorreccionEstilo.label', default: 'CorreccionEstilo'), correccionEstiloInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'correccionEstilo.label', default: 'CorreccionEstilo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
