import Foundation

let input = Int(readLine()!)!

var numArr: [Int] = []

for _ in 0...input-1 {
    let num = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = num[0]
    let b = num[1]
    
    var cnt = 1
    for _ in 1...b {
        cnt *= a
        cnt %= 10
    }
    numArr.append(cnt)
}
for i in numArr {
    if i==0 {
        print(10)
    } else {
        print(i)
    }
}
