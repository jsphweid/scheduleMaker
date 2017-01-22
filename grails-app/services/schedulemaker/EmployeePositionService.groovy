package schedulemaker

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class EmployeePositionService {

    def dataSource

    def getEmpPosMap() {
        def sql = new Sql(dataSource)
//        def positions =
    }

//    def getDayIdText() {
//        def sql = new Sql(dataSource)
//        def dayPredictionRows = sql.rows("SELECT * FROM day_prediction")
//
//        // make simple map
//        // use like: dayIdText.getAt(numberAtDay_ID)
//        def dayIdText = [:]
//        dayPredictionRows.each {
//            int num = it.day_id as Integer
//            dayIdText[(num)] = it.day_text
//        }
//        return dayIdText
//    }
}
