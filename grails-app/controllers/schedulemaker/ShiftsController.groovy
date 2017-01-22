package schedulemaker

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ShiftsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Shift.list(params), model:[shiftsCount: Shift.count()]
    }

    def show(Shift shifts) {
        respond shifts
    }

    def create() {
        [shiftsInstance: new Shift(params)]
    }

    def save() {
        def shiftsInstance = new Shift(params)
        shiftsInstance.lastUpdate = new Date()
        if (!shiftsInstance.save()) {
            render(view: "add", modal: [shiftsInstance: shiftsInstance])
            return
        }

        redirect(action: "index")
    }

    def edit(Shift shifts) {
        respond shifts
    }

    @Transactional
    def update(Shift shifts) {

        shifts.lastUpdate = new Date()

        if (shifts == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (shifts.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond shifts.errors, view:'edit'
            return
        }

        shifts.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'shifts.label', default: 'Shift'), shifts.id])
                redirect shifts
            }
            '*'{ respond shifts, [status: OK] }
        }
    }

    @Transactional
    def delete(Shift shifts) {

        if (shifts == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        shifts.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'shifts.label', default: 'Shift'), shifts.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shifts.label', default: 'Shift'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
