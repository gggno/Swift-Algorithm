import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var cnt = n
    for cha in control {
        if cha == "w" {
            cnt += 1
        } else if cha == "s" {
            cnt -= 1
        } else if cha == "d" {
            cnt += 10
        } else if cha == "a" {
            cnt -= 10
        } else {
            continue
        }
    }
    
    return cnt
}