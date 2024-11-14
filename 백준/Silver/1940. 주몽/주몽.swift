import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

var result = 0

for i in 0..<n-1 {
    for j in i+1..<n {
        result += arr[i] + arr[j] == m ? 1 : 0
    }
}

print(result)