import Foundation

func solution(_ n:Int) -> Int {
    var min = 0
    
    for i in 1...n {
        if n % i == 1 {
            min = i
            break
        }
    }
    
    
    return min
}