import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var arr: [Int] = []

for i in 1...n {
    if n % i == 0 {
        arr.append(i)
    }
}

print(arr.count >= k ? arr[k-1] : 0)