package schedulemaker

class Position {

    static mapping = {
        version false
        id column: "position_id"
        text column: "position_text"
    }

    int id
    String text
    Date lastUpdate

    String toString() {
        text
    }

    static constraints = {
        text(blank: false)
    }
}
