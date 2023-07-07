import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var compare: [String] = []
    
    for i in 0..<words.count {
        let arr = Array(words[i])
        var n1 = (i%n) + 1   // 번호
        var n2 = (i/n) + 1   // 차례
        
         if compare.contains(words[i]) || (compare.isEmpty == false && compare.last!.suffix(1) != words[i].prefix(1)) {
            return [n1, n2]
        } else {
            compare.append(words[i])
        }
        
    }
    
    
    return [0, 0]
}