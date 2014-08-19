package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CargasISOController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CargasISO.list(params), model:[cargasISOInstanceCount: CargasISO.count()]
    }

    def show(CargasISO cargasISOInstance) {
        respond cargasISOInstance
    }

    def create() {
        respond new CargasISO(params)
    }

    @Transactional
    def save(CargasISO cargasISOInstance) {
        if (cargasISOInstance == null) {
            notFound()
            return
        }

        if (cargasISOInstance.hasErrors()) {
            respond cargasISOInstance.errors, view:'create'
            return
        }

        cargasISOInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cargasISO.label', default: 'CargasISO'), cargasISOInstance.id])
                redirect cargasISOInstance
            }
            '*' { respond cargasISOInstance, [status: CREATED] }
        }
    }

    def edit(CargasISO cargasISOInstance) {
        respond cargasISOInstance
    }

    @Transactional
    def update(CargasISO cargasISOInstance) {
        if (cargasISOInstance == null) {
            notFound()
            return
        }

        if (cargasISOInstance.hasErrors()) {
            respond cargasISOInstance.errors, view:'edit'
            return
        }

        cargasISOInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CargasISO.label', default: 'CargasISO'), cargasISOInstance.id])
                redirect cargasISOInstance
            }
            '*'{ respond cargasISOInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CargasISO cargasISOInstance) {

        if (cargasISOInstance == null) {
            notFound()
            return
        }

        cargasISOInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CargasISO.label', default: 'CargasISO'), cargasISOInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargasISO.label', default: 'CargasISO'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
