func solution(_ a:Int, _ b:Int) -> String {
    let week = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var sumday = 0
    
    for i in 1..<a {
        var day = 0
        
        switch i {
            case 1, 3, 5, 7, 8, 10, 12:
            day = 31
            case 2:
            day = 29
            default:
            day = 30
        }
        sumday += day
    }
    
    sumday += b
    
    return week[sumday%7]
}