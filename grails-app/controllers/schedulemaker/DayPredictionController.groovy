package schedulemaker

import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DayPredictionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        [dayPredictions: DayPrediction.list()]
    }

    def show(DayPrediction dayPrediction) {
        String dayPredictionJSON = dayPrediction as JSON
        [dayPredictionJSON: dayPredictionJSON, dayPrediction: dayPrediction]
    }

    def create() {
        [DayPredictionInstance: new DayPrediction(params)]
    }

    def save() {
        def dayPredictionInstance = new DayPrediction(params)
        dayPredictionInstance.lastUpdate = new Date()
        if (!dayPredictionInstance.save()) {
            render(view: "add", modal: [dayPredictionInstance: dayPredictionInstance])
            return
        }
        redirect(action: "index")
    }

    def edit(DayPrediction dayPrediction) {
        String dayPredictionJSON = dayPrediction as JSON
        [dayPredictionJSON: dayPredictionJSON, dayPrediction: dayPrediction]
    }

    @Transactional
    def update(DayPrediction dayPrediction) {

        dayPrediction.lastUpdate = new Date()


        if (dayPrediction == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (dayPrediction.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond dayPrediction.errors, view:'edit'
            return
        }

        dayPrediction.save flush:true
        redirect(action: "show", id: dayPrediction.id)

    }


    @Transactional
    def delete(DayPrediction dayPrediction) {

        if (dayPrediction == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        dayPrediction.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'dayPrediction.label', default: 'DayPrediction'), dayPrediction.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dayPrediction.label', default: 'DayPrediction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
