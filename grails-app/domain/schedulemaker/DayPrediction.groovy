package schedulemaker

class DayPrediction {

    static mapping = {
        table "day_predictions"
        version false
        id column: "day_id"
        text column: "day_text"
        hour00 column: "hour_00"
        hour01 column: "hour_01"
        hour02 column: "hour_02"
        hour03 column: "hour_03"
        hour04 column: "hour_04"
        hour05 column: "hour_05"
        hour06 column: "hour_06"
        hour07 column: "hour_07"
        hour08 column: "hour_08"
        hour09 column: "hour_09"
        hour10 column: "hour_10"
        hour11 column: "hour_11"
        hour12 column: "hour_12"
        hour13 column: "hour_13"
        hour14 column: "hour_14"
        hour15 column: "hour_15"
        hour16 column: "hour_16"
        hour17 column: "hour_17"
        hour18 column: "hour_18"
        hour19 column: "hour_19"
        hour20 column: "hour_20"
        hour21 column: "hour_21"
        hour22 column: "hour_22"
        hour23 column: "hour_23"
        lastUpdate column: "last_update"
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
