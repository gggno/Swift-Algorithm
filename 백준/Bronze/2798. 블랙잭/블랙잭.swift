import Foundation

let input1 = readLine()!.split(separator: " ").map {Int($0)!}
let n = input1[0]
let m = input1[1]
var result = 0

let arr = readLine()!.split(separator: " ").map {Int($0)!}

for i in 0..<n-2 {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            let sum = arr[i] + arr[j] + arr[k]
            if sum <= m && sum > result {
                result = sum
            }
        }
    }
}
print(result)
