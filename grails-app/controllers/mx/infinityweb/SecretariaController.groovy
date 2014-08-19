package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SecretariaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Secretaria.list(params), model:[secretariaInstanceCount: Secretaria.count()]
    }

    def show(Secretaria secretariaInstance) {
        respond secretariaInstance
    }

    def create() {
        respond new Secretaria(params)
    }

    @Transactional
    def save(Secretaria secretariaInstance) {
        if (secretariaInstance == null) {
            notFound()
            return
        }

        if (secretariaInstance.hasErrors()) {
            respond secretariaInstance.errors, view:'create'
            return
        }

        secretariaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'secretaria.label', default: 'Secretaria'), secretariaInstance.id])
                redirect secretariaInstance
            }
            '*' { respond secretariaInstance, [status: CREATED] }
        }
    }

    def edit(Secretaria secretariaInstance) {
        respond secretariaInstance
    }

    @Transactional
    def update(Secretaria secretariaInstance) {
        if (secretariaInstance == null) {
            notFound()
            return
        }

        if (secretariaInstance.hasErrors()) {
            respond secretariaInstance.errors, view:'edit'
            return
        }

        secretariaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Secretaria.label', default: 'Secretaria'), secretariaInstance.id])
                redirect secretariaInstance
            }
            '*'{ respond secretariaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Secretaria secretariaInstance) {

        if (secretariaInstance == null) {
            notFound()
            return
        }

        secretariaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Secretaria.label', default: 'Secretaria'), secretariaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'secretaria.label', default: 'Secretaria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
