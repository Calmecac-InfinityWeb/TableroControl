package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProcedimientoController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Procedimiento.list(params), [status: OK]
    }

    @Transactional
    def save(Procedimiento procedimientoInstance) {
        if (procedimientoInstance == null) {
            render status: NOT_FOUND
            return
        }

        procedimientoInstance.validate()
        if (procedimientoInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        procedimientoInstance.save flush:true
        respond procedimientoInstance, [status: CREATED]
    }

    @Transactional
    def update(Procedimiento procedimientoInstance) {
        if (procedimientoInstance == null) {
            render status: NOT_FOUND
            return
        }

        procedimientoInstance.validate()
        if (procedimientoInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        procedimientoInstance.save flush:true
        respond procedimientoInstance, [status: OK]
    }

    @Transactional
    def delete(Procedimiento procedimientoInstance) {

        if (procedimientoInstance == null) {
            render status: NOT_FOUND
            return
        }

        procedimientoInstance.delete flush:true
        render status: NO_CONTENT
    }
}
