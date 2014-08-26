package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpcLlenadoController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OpcLlenado.list(params), [status: OK]
    }

    @Transactional
    def save(OpcLlenado opcLlenadoInstance) {
        if (opcLlenadoInstance == null) {
            render status: NOT_FOUND
            return
        }

        opcLlenadoInstance.validate()
        if (opcLlenadoInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        opcLlenadoInstance.save flush:true
        respond opcLlenadoInstance, [status: CREATED]
    }

    @Transactional
    def update(OpcLlenado opcLlenadoInstance) {
        if (opcLlenadoInstance == null) {
            render status: NOT_FOUND
            return
        }

        opcLlenadoInstance.validate()
        if (opcLlenadoInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        opcLlenadoInstance.save flush:true
        respond opcLlenadoInstance, [status: OK]
    }

    @Transactional
    def delete(OpcLlenado opcLlenadoInstance) {

        if (opcLlenadoInstance == null) {
            render status: NOT_FOUND
            return
        }

        opcLlenadoInstance.delete flush:true
        render status: NO_CONTENT
    }
}
