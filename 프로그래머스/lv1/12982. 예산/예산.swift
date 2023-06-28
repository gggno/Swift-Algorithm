import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var cnt = 0
    
    for i in d.sorted() {
        if sum + i <= budget {
            sum += i
            cnt += 1
        } else {
            break
        }
    }
    
    return cnt
}