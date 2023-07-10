import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var arr = score.sorted(by: >)
    var result = 0
    var re: [Int] = []  
    
    for i in 0..<score.count - (score.count % m) {
            re.append(arr[i])
            if re.count == m {
                result += re.min()! * m
                re.removeAll()
            }
        }
    
    return result
}