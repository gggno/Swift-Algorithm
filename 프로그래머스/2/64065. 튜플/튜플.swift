import Foundation

func solution(_ s:String) -> [Int] {
    let arr = s.components(separatedBy: ["{", "}", ","]).filter{!$0.isEmpty}.map{Int($0)!}
    var dic: [Int:Int] = [:]
    
    for i in arr {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
  
    return dic.sorted{ $0.1 > $1.1 }.map {$0.key}
}