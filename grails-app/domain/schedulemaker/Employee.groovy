package schedulemaker

class Employee {

    static mapping = {
        version false
        id column: "employee_id"
    }

    int id
    String firstName
    String lastName
    float hourlyWage
    float score
    float minHours
    float maxHours
    Date lastUpdate

    String toString() {
        firstName + " " + lastName
    }

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
