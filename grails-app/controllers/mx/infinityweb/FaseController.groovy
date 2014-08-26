package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FaseController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Fase.list(params), [status: OK]
    }

    @Transactional
    def save(Fase faseInstance) {
        if (faseInstance == null) {
            render status: NOT_FOUND
            return
        }

        faseInstance.validate()
        if (faseInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        faseInstance.save flush:true
        respond faseInstance, [status: CREATED]
    }

    @Transactional
    def update(Fase faseInstance) {
        if (faseInstance == null) {
            render status: NOT_FOUND
            return
        }

        faseInstance.validate()
        if (faseInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        faseInstance.save flush:true
        respond faseInstance, [status: OK]
    }

    @Transactional
    def delete(Fase faseInstance) {

        if (faseInstance == null) {
            render status: NOT_FOUND
            return
        }

        faseInstance.delete flush:true
        render status: NO_CONTENT
    }
}
