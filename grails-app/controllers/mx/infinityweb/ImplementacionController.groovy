package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImplementacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Implementacion.list(params), model:[implementacionInstanceCount: Implementacion.count()]
    }

    def show(Implementacion implementacionInstance) {
        respond implementacionInstance
    }

    def create() {
        respond new Implementacion(params)
    }

    @Transactional
    def save(Implementacion implementacionInstance) {
        if (implementacionInstance == null) {
            notFound()
            return
        }

        if (implementacionInstance.hasErrors()) {
            respond implementacionInstance.errors, view:'create'
            return
        }

        implementacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'implementacion.label', default: 'Implementacion'), implementacionInstance.id])
                redirect implementacionInstance
            }
            '*' { respond implementacionInstance, [status: CREATED] }
        }
    }

    def edit(Implementacion implementacionInstance) {
        respond implementacionInstance
    }

    @Transactional
    def update(Implementacion implementacionInstance) {
        if (implementacionInstance == null) {
            notFound()
            return
        }

        if (implementacionInstance.hasErrors()) {
            respond implementacionInstance.errors, view:'edit'
            return
        }

        implementacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Implementacion.label', default: 'Implementacion'), implementacionInstance.id])
                redirect implementacionInstance
            }
            '*'{ respond implementacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Implementacion implementacionInstance) {

        if (implementacionInstance == null) {
            notFound()
            return
        }

        implementacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Implementacion.label', default: 'Implementacion'), implementacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'implementacion.label', default: 'Implementacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
