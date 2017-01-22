package schedulemaker

class DayPrediction {


    static mapping = {
        version false
        id column: "day_id"
        text column: "day_text"
    }

    int id
    String text
    int hour00
    int hour01
    int hour02
    int hour03
    int hour04
    int hour05
    int hour06
    int hour07
    int hour08
    int hour09
    int hour10
    int hour11
    int hour12
    int hour13
    int hour14
    int hour15
    int hour16
    int hour17
    int hour18
    int hour19
    int hour20
    int hour21
    int hour22
    int hour23
    Date lastUpdate

    static constraints = {
    }
}
