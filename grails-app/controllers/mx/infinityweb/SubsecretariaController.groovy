package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubsecretariaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subsecretaria.list(params), model:[subsecretariaInstanceCount: Subsecretaria.count()]
    }

    def show(Subsecretaria subsecretariaInstance) {
        respond subsecretariaInstance
    }

    def create() {
        respond new Subsecretaria(params)
    }

    @Transactional
    def save(Subsecretaria subsecretariaInstance) {
        if (subsecretariaInstance == null) {
            notFound()
            return
        }

        if (subsecretariaInstance.hasErrors()) {
            respond subsecretariaInstance.errors, view:'create'
            return
        }

        subsecretariaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subsecretaria.label', default: 'Subsecretaria'), subsecretariaInstance.id])
                redirect subsecretariaInstance
            }
            '*' { respond subsecretariaInstance, [status: CREATED] }
        }
    }

    def edit(Subsecretaria subsecretariaInstance) {
        respond subsecretariaInstance
    }

    @Transactional
    def update(Subsecretaria subsecretariaInstance) {
        if (subsecretariaInstance == null) {
            notFound()
            return
        }

        if (subsecretariaInstance.hasErrors()) {
            respond subsecretariaInstance.errors, view:'edit'
            return
        }

        subsecretariaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Subsecretaria.label', default: 'Subsecretaria'), subsecretariaInstance.id])
                redirect subsecretariaInstance
            }
            '*'{ respond subsecretariaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Subsecretaria subsecretariaInstance) {

        if (subsecretariaInstance == null) {
            notFound()
            return
        }

        subsecretariaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Subsecretaria.label', default: 'Subsecretaria'), subsecretariaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subsecretaria.label', default: 'Subsecretaria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
