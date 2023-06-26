import Foundation

func solution(_ message:String) -> Int {
    var cnt = 0
    
    for cha in message {
        cnt += 2
    }
    return cnt
}