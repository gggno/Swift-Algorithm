import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var cnt = 0
    var result = 0
    var dic: [Int: Int] = [:]
    
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