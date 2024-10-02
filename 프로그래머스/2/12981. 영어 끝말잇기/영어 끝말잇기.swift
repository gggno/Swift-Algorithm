import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var compare: [String] = []
    
    for i in 0..<words.count {
        let n1 = (i % n) + 1
        let n2 = (i / n) + 1
        
        if compare.contains(words[i]) || 
        (!compare.isEmpty && compare[compare.count-1].last! != words[i].first!) {
            return [n1, n2]
        
        } else {
            compare.append(words[i])
        }
    }
    
    return [0, 0]
}