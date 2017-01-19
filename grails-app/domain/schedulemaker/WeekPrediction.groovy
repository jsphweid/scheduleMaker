package schedulemaker

class WeekPrediction {

    static mapping = {
        table "week_predictions"
        version false
        id column: "week_prediction_id"
        text column: "week_prediction_text"
        day1 column: "day_1"
        day2 column: "day_2"
        day3 column: "day_3"
        day4 column: "day_4"
        day5 column: "day_5"
        day6 column: "day_6"
        day7 column: "day_7"
        lastUpdate column: "last_update"
    }

    int id
    String text
    int day1
    int day2
    int day3
    int day4
    int day5
    int day6
    int day7
    Date lastUpdate
}
