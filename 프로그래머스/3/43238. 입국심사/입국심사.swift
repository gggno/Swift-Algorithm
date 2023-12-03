import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    
    var times = times.sorted()
    var start = 1
    var end = times.max()! * n
    
    while start != end {
        let mid = (start + end) / 2
        var person = 0
        
        for i in times {
            person += mid / i
        }

        if person >= n {
            end = mid
        } else {
            start = mid + 1
        }
    }
    
    return Int64(start)
}