import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var result = 0
    
    for i in 0..<schedules.count {
        var goal = schedules[i] + 10
        
        if goal % 100 >= 60 {
            goal += 100
            goal -= 60
        }
        
        var state = true
        
        for j in 0..<7 {
            let ref = j + startday
            
            if ref % 7 == 0 || ref % 7 == 6 { continue }
            
            if goal < timelogs[i][j] {
                state = false
                break
            }
        }
        
        if state {
            result += 1
        }
    }
    
    return result
}
