import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var arr: [Int] = []
    
    for i in 0..<photo.count {
        var result = 0
        for j in 0..<name.count {
            if photo[i].contains(name[j]) {
                result += yearning[j]
            }
        }
        arr.append(result)
    }
    
    return arr
}