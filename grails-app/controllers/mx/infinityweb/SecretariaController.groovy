package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SecretariaController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Secretaria.list(params), [status: OK]
    }

    @Transactional
    def save(Secretaria secretariaInstance) {
        if (secretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        secretariaInstance.validate()
        if (secretariaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        secretariaInstance.save flush:true
        respond secretariaInstance, [status: CREATED]
    }

    @Transactional
    def update(Secretaria secretariaInstance) {
        if (secretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        secretariaInstance.validate()
        if (secretariaInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        secretariaInstance.save flush:true
        respond secretariaInstance, [status: OK]
    }

    @Transactional
    def delete(Secretaria secretariaInstance) {

        if (secretariaInstance == null) {
            render status: NOT_FOUND
            return
        }

        secretariaInstance.delete flush:true
        render status: NO_CONTENT
    }
}
