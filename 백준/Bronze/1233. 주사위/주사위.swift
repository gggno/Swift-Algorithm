import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
var dic: [Int:Int] = [:]

let a = input[0]
let b = input[1]
let c = input[2]

for i in 3...a+b+c {
    dic[i] = 0
}

for i in 1...a {
    for j in 1...b {
        for k in 1...c {
            dic[i+j+k]! += 1
        }
    }
}
let dic2 = dic.sorted{$0.0 < $1.0}.sorted{$0.1 > $1.1}
print(dic2.first!.key)