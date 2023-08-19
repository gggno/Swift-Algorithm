import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic: [Int: Int] = [:]
    var result = 0
    var kk = k
    
    for i in tangerine {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    var dic2 = dic.sorted{$0.1 > $1.1}
   

    for i in dic2 {
        if kk <= 0 {
            break
        }
       
        kk -= i.value
        result += 1     
    }
    
    return result
}