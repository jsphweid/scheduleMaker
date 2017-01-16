package schedulemaker
import groovy.sql.Sql

class MyTestController {
    def dataSource
    def index() {
        def sql = new Sql(dataSource)
        def rows = sql.rows("SELECT * FROM employees")
        println rows
        [employees: rows]
    }

}
