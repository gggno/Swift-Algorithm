import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var list: [Int] = []
    var result: [Int] = []
    
    for i in score {
        list.append(i)
        list.sort{$1 < $0}
        
        // 상위 k번째보다 적을 때
        if list.count <= k {
            result.append(list.last!)
        
        } else {
            result.append(list[k-1])
        } 
    }
    
    return result
}