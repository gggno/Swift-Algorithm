import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var result = 0
    
    for i in 0..<schedules.count {
        var arr: [[Int]] = []
        var day = startday
        
        var goal = schedules[i] + 10

        if goal % 100 >= 60 {
            goal += 100
            goal -= 60
        }
        
        for j in 0..<7 {
            let time = timelogs[i][j]
            let row = [time, day % 7 == 0 ? 7 : day % 7]
            arr.append(row)
            day += 1
        }
        
        var state = true
        
        for k in 0..<arr.count {
            if arr[k][1] >= 6 { // 주말은 패스
                continue
            }
            
            // +10보다 큰 경우
            if goal < arr[k][0] {
                state = false
                break
            }
        }
        
        if state { result += 1 }
    }
    
    return result
}