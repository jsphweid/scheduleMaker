package schedulemaker

class Shifts {

    static mapping = {
        table "shifts"
        version false
        id column: "shift_id"
        text column: "shift_text"
        lastUpdate column: "last_update"
    }

    int id
    String text
    Date lastUpdate

    static constraints = { }
}