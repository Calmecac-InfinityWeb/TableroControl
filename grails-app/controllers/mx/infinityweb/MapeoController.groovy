package mx.infinityweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MapeoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mapeo.list(params), model:[mapeoInstanceCount: Mapeo.count()]
    }

    def show(Mapeo mapeoInstance) {
        respond mapeoInstance
    }

    def create() {
        respond new Mapeo(params)
    }

    @Transactional
    def save(Mapeo mapeoInstance) {
        if (mapeoInstance == null) {
            notFound()
            return
        }

        if (mapeoInstance.hasErrors()) {
            respond mapeoInstance.errors, view:'create'
            return
        }

        mapeoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mapeo.label', default: 'Mapeo'), mapeoInstance.id])
                redirect mapeoInstance
            }
            '*' { respond mapeoInstance, [status: CREATED] }
        }
    }

    def edit(Mapeo mapeoInstance) {
        respond mapeoInstance
    }

    @Transactional
    def update(Mapeo mapeoInstance) {
        if (mapeoInstance == null) {
            notFound()
            return
        }

        if (mapeoInstance.hasErrors()) {
            respond mapeoInstance.errors, view:'edit'
            return
        }

        mapeoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Mapeo.label', default: 'Mapeo'), mapeoInstance.id])
                redirect mapeoInstance
            }
            '*'{ respond mapeoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Mapeo mapeoInstance) {

        if (mapeoInstance == null) {
            notFound()
            return
        }

        mapeoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Mapeo.label', default: 'Mapeo'), mapeoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mapeo.label', default: 'Mapeo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
