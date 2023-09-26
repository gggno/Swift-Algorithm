import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var result = 0
    var num = String(n, radix: k).split(separator: "0").map{Int($0)!}.filter{$0 != 1}

    for i in num {
       var state = true
        for j in 2...Int(sqrt(Double(i))) + 1 {
            if j != i && i % j == 0 {
                state = false
                break
            }
        }
        if state {result += 1} 
    }
    
    return result
}