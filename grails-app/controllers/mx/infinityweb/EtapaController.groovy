package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EtapaController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Etapa.list(params), [status: OK]
    }

    @Transactional
    def save(Etapa etapaInstance) {
        if (etapaInstance == null) {
            render status: NOT_FOUND
            return
        }

        etapaInstance.validate()
        if (etapaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        etapaInstance.save flush:true
        respond etapaInstance, [status: CREATED]
    }

    @Transactional
    def update(Etapa etapaInstance) {
        if (etapaInstance == null) {
            render status: NOT_FOUND
            return
        }

        etapaInstance.validate()
        if (etapaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        etapaInstance.save flush:true
        respond etapaInstance, [status: OK]
    }

    @Transactional
    def delete(Etapa etapaInstance) {

        if (etapaInstance == null) {
            render status: NOT_FOUND
            return
        }

        etapaInstance.delete flush:true
        render status: NO_CONTENT
    }
}
