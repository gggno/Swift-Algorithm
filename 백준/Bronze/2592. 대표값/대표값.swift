import Foundation

var dic: [Int:Int] = [:]
var avg = 0

for _ in 0..<10 {
    let num = Int(readLine()!)!
    
    avg += num
    
    if dic[num] == nil {
        dic[num] = 1
    } else {
        dic[num]! += 1
    }
}
print(avg/10)
print(dic.sorted{$0.1 > $1.1}.first!.key)