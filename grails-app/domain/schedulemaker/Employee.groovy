package schedulemaker

class Employee {

    static mapping = {
        table "employees"
        version false
        id column: "employee_id"
        firstName column: "first_name"
        lastName column: "last_name"
        hourlyWage column: "hourly_wage"
        score column: "score"
        minHours column: "req_min_hours"
        maxHours column: "req_max_hours"
        lastUpdate column: "last_update"
    }

    int id
    String firstName
    String lastName
    float hourlyWage
    float score
    float minHours
    float maxHours
    Date lastUpdate

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        hourlyWage(blank: false, size: 0..10000)
        score(blank: false, size: 0..10000)

        // why don't these work???
        minHours(min: 0.0f)
        maxHours(min: 0.0f)
        maxHours(validator:{
            value, reference ->
                return value > reference.minHours
        })
    }
}
