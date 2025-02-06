import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    
    var arr = jobs.sorted{ $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]}
    arr.sort{ $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]}
    
    var time = 0
    var sum = 0
    
    while !arr.isEmpty {
        var state = false
        
        for i in 0..<arr.count {
            if arr[i][0] <= time {
                time += arr[i][1]
                sum += time - arr[i][0]
                arr.remove(at: i)
                state = true
                break
            }
        }
        
        if !state {
            time += 1
        }
    }
    
    return sum / jobs.count
}