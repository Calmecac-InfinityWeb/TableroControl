package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProcedimientoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Procedimiento.list(params), model:[procedimientoInstanceCount: Procedimiento.count()]
    }

    def show(Procedimiento procedimientoInstance) {
        respond procedimientoInstance
    }

    def create() {
        respond new Procedimiento(params)
    }

    @Transactional
    def save(Procedimiento procedimientoInstance) {
        if (procedimientoInstance == null) {
            notFound()
            return
        }

        if (procedimientoInstance.hasErrors()) {
            respond procedimientoInstance.errors, view:'create'
            return
        }

        procedimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'procedimiento.label', default: 'Procedimiento'), procedimientoInstance.id])
                redirect procedimientoInstance
            }
            '*' { respond procedimientoInstance, [status: CREATED] }
        }
    }

    def edit(Procedimiento procedimientoInstance) {
        respond procedimientoInstance
    }

    @Transactional
    def update(Procedimiento procedimientoInstance) {
        if (procedimientoInstance == null) {
            notFound()
            return
        }

        if (procedimientoInstance.hasErrors()) {
            respond procedimientoInstance.errors, view:'edit'
            return
        }

        procedimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Procedimiento.label', default: 'Procedimiento'), procedimientoInstance.id])
                redirect procedimientoInstance
            }
            '*'{ respond procedimientoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Procedimiento procedimientoInstance) {

        if (procedimientoInstance == null) {
            notFound()
            return
        }

        procedimientoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Procedimiento.label', default: 'Procedimiento'), procedimientoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'procedimiento.label', default: 'Procedimiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
