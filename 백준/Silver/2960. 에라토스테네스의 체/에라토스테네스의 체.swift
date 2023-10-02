import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]
var result: [Int] = []
var arr = Array(2...n)

while !arr.isEmpty {
    let first = arr.removeFirst()
    var temp = arr
    
    result.append(first)
    for i in 0..<arr.count {
        if arr[i] % first == 0 {
            let index = temp.firstIndex(of: arr[i])!
            result.append(temp.remove(at: index))
        }
    }
    arr = temp
}
print(result[k-1])