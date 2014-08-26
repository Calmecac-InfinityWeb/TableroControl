package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubsecretariaController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subsecretaria.list(params), [status: OK]
    }

    @Transactional
    def save(Subsecretaria subsecretariaInstance) {
        if (subsecretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        subsecretariaInstance.validate()
        if (subsecretariaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        subsecretariaInstance.save flush:true
        respond subsecretariaInstance, [status: CREATED]
    }

    @Transactional
    def update(Subsecretaria subsecretariaInstance) {
        if (subsecretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        subsecretariaInstance.validate()
        if (subsecretariaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        subsecretariaInstance.save flush:true
        respond subsecretariaInstance, [status: OK]
    }

    @Transactional
    def delete(Subsecretaria subsecretariaInstance) {

        if (subsecretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        subsecretariaInstance.delete flush:true
        render status: NO_CONTENT
    }
}
