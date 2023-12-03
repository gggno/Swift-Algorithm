import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    var aa = a.sorted{$0 > $1}
    var bb = b.sorted{$0 > $1}
    
    var index = 0
    var result = 0
    for i in 0..<a.count {
        if bb[index] > aa[i] {
            index += 1
            result += 1
        }
    }
    
    return result
}