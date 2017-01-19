package schedulemaker

import grails.transaction.Transactional
import groovy.sql.Sql // slows down intellij when enabling things like sql.rows("SELECT * FROM day_predictions")

@Transactional
class WeekPredictionService {

    def dataSource

    def getDayIdText() {
        def sql = new Sql(dataSource)
        def dayPredictionRows = sql.rows("SELECT * FROM day_predictions")

        // make simple map
        // use like: dayIdText.getAt(numberAtDay_ID)
        def dayIdText = [:]
        dayPredictionRows.each {
            int num = it.day_id as Integer
            dayIdText[(num)] = it.day_text
        }
        return dayIdText
    }
}
