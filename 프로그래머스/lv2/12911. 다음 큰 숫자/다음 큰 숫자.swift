import Foundation

func solution(_ n:Int) -> Int {
    var ntwo = String(n, radix: 2)
    var next = n + 1
    
    var twoCnt = ntwo.filter {$0 == "1"}.count
    
    while true {
        let nextR = String(next, radix: 2)
        if twoCnt == nextR.filter {$0 == "1"}.count {
            return next
        } else {
            next += 1
        }
    }
    
}