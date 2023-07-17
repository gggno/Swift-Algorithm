import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let k = input[1]
var arr: [Int] = Array(1...n)
var result: [Int] = []
var cnt = k

while !arr.isEmpty {
    if cnt <= arr.count {
        result.append(arr[cnt-1])
        arr.remove(at: cnt-1)
        cnt += k-1
    } else {
        cnt -= arr.count
    }
}
print("<" + result.map{String($0)}.joined(separator: ", ") + ">")