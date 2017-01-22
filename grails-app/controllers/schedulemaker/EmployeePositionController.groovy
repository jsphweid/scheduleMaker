package schedulemaker

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmployeePositionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EmployeePosition.list(params), model:[employeePositionCount: EmployeePosition.count()]
    }

    def show(EmployeePosition employeePosition) {
        respond employeePosition
    }

    def create() {
        respond new EmployeePosition(params)
    }

    @Transactional
    def save(EmployeePosition employeePosition) {
        if (employeePosition == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (employeePosition.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond employeePosition.errors, view:'create'
            return
        }

        employeePosition.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employeePosition.label', default: 'EmployeePosition'), employeePosition.id])
                redirect employeePosition
            }
            '*' { respond employeePosition, [status: CREATED] }
        }
    }

    def edit(EmployeePosition employeePosition) {
        respond employeePosition
    }

    @Transactional
    def update(EmployeePosition employeePosition) {
        if (employeePosition == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (employeePosition.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond employeePosition.errors, view:'edit'
            return
        }

        employeePosition.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'employeePosition.label', default: 'EmployeePosition'), employeePosition.id])
                redirect employeePosition
            }
            '*'{ respond employeePosition, [status: OK] }
        }
    }

    @Transactional
    def delete(EmployeePosition employeePosition) {

        if (employeePosition == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        employeePosition.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'employeePosition.label', default: 'EmployeePosition'), employeePosition.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeePosition.label', default: 'EmployeePosition'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
