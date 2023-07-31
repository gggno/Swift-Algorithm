import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]
var arr: [[String]] = []
var result = ""
var count = 0
var firstCnt = 0

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0..<m {
    var dic: [String: Int] = [:]
    for j in 0..<n {
        if dic[arr[j][i]] == nil {
            dic[arr[j][i]] = 1
        } else {
            dic[arr[j][i]]! += 1
        }
    }
    let dic2 = dic.sorted{$0.0 < $1.0}.sorted{$0.1 > $1.1}
    result += dic2.first!.key
    firstCnt += dic2.first!.value
    for k in dic2 {
        count += k.value
    }
    
}
print(result)
print(count - firstCnt)