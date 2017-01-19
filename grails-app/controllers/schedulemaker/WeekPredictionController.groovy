package schedulemaker

import grails.transaction.Transactional
import static org.springframework.http.HttpStatus.*

class WeekPredictionController {

    def weekPredictionService

    def index() {
        [weekPredictions: WeekPrediction.list(), dayIdText: weekPredictionService.getDayIdText()]
    }

    def create() {
        [weekPredictionInstance: new WeekPrediction(params), dayIdText: weekPredictionService.getDayIdText()]
    }

    def edit(WeekPrediction weekPrediction) {
        [weekPrediction: weekPrediction, dayIdText: weekPredictionService.getDayIdText()]
    }

    def show(WeekPrediction weekPrediction) {
        [weekPrediction: weekPrediction, dayIdText: weekPredictionService.getDayIdText()]
    }

    def save() {
        def weekPredictionInstance = new WeekPrediction(params)
        weekPredictionInstance.lastUpdate = new Date()
        if (!weekPredictionInstance.save()) {
            render(view: "add", modal: [weekPredictionInstance: weekPredictionInstance])
            return
        }
        redirect(action: "index")
    }
    @Transactional
    def update(WeekPrediction weekPrediction) {

        weekPrediction.lastUpdate = new Date()


        if (weekPrediction == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (weekPrediction.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond weekPrediction.errors, view:'edit'
            return
        }

        weekPrediction.save flush:true
        redirect(action: "show", id: weekPrediction.id)
    }


    @Transactional
    def delete(WeekPrediction weekPrediction) {

        if (weekPrediction == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        println 'deleting'
        weekPrediction.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'weekPrediction.label', default: 'WeekPrediction'), weekPrediction.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'weekPrediction.label', default: 'WeekPrediction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
