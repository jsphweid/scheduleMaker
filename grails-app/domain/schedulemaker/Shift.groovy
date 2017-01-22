package schedulemaker

class Shift {

    static mapping = {
        version false
        id column: "shift_id"
        text column: "shift_text"
    }

    int id
    String text
    Date lastUpdate

    static constraints = { }
}