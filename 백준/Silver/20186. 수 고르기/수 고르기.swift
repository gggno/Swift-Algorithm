import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

var target = arr.sorted(by: >)[0..<k]

var cnt = 0
var result = 0

for i in 0..<arr.count {
    if target.contains(arr[i]) {
        result += arr[i] - cnt
        cnt += 1
        
        let index = target.firstIndex(of: arr[i])!
        target.remove(at: index)
    }
}

print(result)