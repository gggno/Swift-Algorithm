import Foundation

var arr: [Int] = []
var first = 0
var second = 0

for i in 0..<9 {
    let n = Int(readLine()!)!
    arr.append(n)
}
arr.sort()
let allSum = arr.reduce(0){$0+$1}

for i in 0..<8 {
    for j in i+1..<9 {
        let sum = arr[i] + arr[j]
        if allSum - sum == 100 {
            first = arr[i]
            second = arr[j]
            break
        }
    }
}

arr.remove(at: arr.firstIndex(of: first)!)
arr.remove(at: arr.firstIndex(of: second)!)

for i in arr {
    print(i)
}
