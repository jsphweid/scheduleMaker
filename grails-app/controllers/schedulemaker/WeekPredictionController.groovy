package schedulemaker

import grails.converters.JSON

class WeekPredictionController {

    def weekPredictionService

    def index() {
        [weekPredictions: WeekPrediction.list(), dayIdText: weekPredictionService.getDayIdText()]
    }

    def create() {
        [weekPredictionInstance: new WeekPrediction(params), dayIdText: weekPredictionService.getDayIdText()]
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
}
