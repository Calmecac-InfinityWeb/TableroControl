package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubdireccionController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subdireccion.list(params), [status: OK]
    }

    @Transactional
    def save(Subdireccion subdireccionInstance) {
        if (subdireccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        subdireccionInstance.validate()
        if (subdireccionInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        subdireccionInstance.save flush:true
        respond subdireccionInstance, [status: CREATED]
    }

    @Transactional
    def update(Subdireccion subdireccionInstance) {
        if (subdireccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        subdireccionInstance.validate()
        if (subdireccionInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        subdireccionInstance.save flush:true
        respond subdireccionInstance, [status: OK]
    }

    @Transactional
    def delete(Subdireccion subdireccionInstance) {

        if (subdireccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        subdireccionInstance.delete flush:true
        render status: NO_CONTENT
    }
}
