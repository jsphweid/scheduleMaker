package schedulemaker

class Position {

    static mapping = {
        table "positions"
        version false
        id column: "position_id"
        text column: "position_text"
        lastUpdate column: "last_update"
    }

    int id
    String text
    Date lastUpdate

    static constraints = {
        text(blank: false)
    }
}
