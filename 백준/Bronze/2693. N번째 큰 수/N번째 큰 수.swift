import Foundation

let input = Int(readLine()!)!
var resArr: [Int] = []

for _ in 0...input-1 {
    var numArr: [Int] = []
    let num = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in num {
        numArr.append(i)
    }
    let arr = numArr.sorted(by: >)
    resArr.append(arr[2])
}

for i in resArr {
    print(i)
}
