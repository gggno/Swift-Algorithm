import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var dic: [Int:Int] = [:]
    var cnt: Int = 0
    var result: Int = 0
    
    for i in tangerine {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    for i in dic.sorted{$0.1 > $1.1} {
        if cnt + i.value <= k {
            cnt += i.value
            result += 1
        
        } else {
            return result + 1
        }
        
        if cnt == k {
            return result
        }
    }
    
    return result
}