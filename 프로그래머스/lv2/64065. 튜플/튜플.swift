import Foundation

func solution(_ s:String) -> [Int] {
    let arr = s.components(separatedBy: ["{", "}", ","]).filter{!$0.isEmpty}.map{Int($0)!}
    var dic: [Int:Int] = [:]
    
    for i in arr {
        if let d = dic[i] {
            dic[i] = d + 1
        } else {
            dic[i] = 1
        }
    }
  
    return dic.sorted{ $0.1 > $1.1 }.map {$0.key}
}