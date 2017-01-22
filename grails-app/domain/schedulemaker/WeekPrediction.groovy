package schedulemaker

class WeekPrediction {

    static mapping = {
        version false
        id column: "week_prediction_id"
        text column: "week_prediction_text"
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
