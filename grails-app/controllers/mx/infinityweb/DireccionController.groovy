package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DireccionController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Direccion.list(params), [status: OK]
    }

    @Transactional
    def save(Direccion direccionInstance) {
        if (direccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        direccionInstance.validate()
        if (direccionInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        direccionInstance.save flush:true
        respond direccionInstance, [status: CREATED]
    }

    @Transactional
    def update(Direccion direccionInstance) {
        if (direccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        direccionInstance.validate()
        if (direccionInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        direccionInstance.save flush:true
        respond direccionInstance, [status: OK]
    }

    @Transactional
    def delete(Direccion direccionInstance) {

        if (direccionInstance == null) {
            render status: NOT_FOUND
            return
        }

        direccionInstance.delete flush:true
        render status: NO_CONTENT
    }
}
