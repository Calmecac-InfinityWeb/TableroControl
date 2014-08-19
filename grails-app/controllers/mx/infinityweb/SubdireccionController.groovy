package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubdireccionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subdireccion.list(params), model:[subdireccionInstanceCount: Subdireccion.count()]
    }

    def show(Subdireccion subdireccionInstance) {
        respond subdireccionInstance
    }

    def create() {
        respond new Subdireccion(params)
    }

    @Transactional
    def save(Subdireccion subdireccionInstance) {
        if (subdireccionInstance == null) {
            notFound()
            return
        }

        if (subdireccionInstance.hasErrors()) {
            respond subdireccionInstance.errors, view:'create'
            return
        }

        subdireccionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subdireccion.label', default: 'Subdireccion'), subdireccionInstance.id])
                redirect subdireccionInstance
            }
            '*' { respond subdireccionInstance, [status: CREATED] }
        }
    }

    def edit(Subdireccion subdireccionInstance) {
        respond subdireccionInstance
    }

    @Transactional
    def update(Subdireccion subdireccionInstance) {
        if (subdireccionInstance == null) {
            notFound()
            return
        }

        if (subdireccionInstance.hasErrors()) {
            respond subdireccionInstance.errors, view:'edit'
            return
        }

        subdireccionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Subdireccion.label', default: 'Subdireccion'), subdireccionInstance.id])
                redirect subdireccionInstance
            }
            '*'{ respond subdireccionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Subdireccion subdireccionInstance) {

        if (subdireccionInstance == null) {
            notFound()
            return
        }

        subdireccionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Subdireccion.label', default: 'Subdireccion'), subdireccionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subdireccion.label', default: 'Subdireccion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
