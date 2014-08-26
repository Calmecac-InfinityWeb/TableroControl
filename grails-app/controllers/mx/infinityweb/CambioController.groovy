package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CambioController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cambio.list(params), [status: OK]
    }

    @Transactional
    def save(Cambio cambioInstance) {
        if (cambioInstance == null) {
            render status: NOT_FOUND
            return
        }

        cambioInstance.validate()
        if (cambioInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        cambioInstance.save flush:true
        respond cambioInstance, [status: CREATED]
    }

    @Transactional
    def update(Cambio cambioInstance) {
        if (cambioInstance == null) {
            render status: NOT_FOUND
            return
        }

        cambioInstance.validate()
        if (cambioInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        cambioInstance.save flush:true
        respond cambioInstance, [status: OK]
    }

    @Transactional
    def delete(Cambio cambioInstance) {

        if (cambioInstance == null) {
            render status: NOT_FOUND
            return
        }

        cambioInstance.delete flush:true
        render status: NO_CONTENT
    }
}
