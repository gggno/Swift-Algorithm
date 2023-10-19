import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator : " " ).map{Int(String($0))!}
var arr = Array(repeating : 0, count : n)

for i in 0..<n {
    var temp = 0
    
    for j in 0..<n {
        if arr[j] == 0 || arr[j] > i + 1 {
            if temp == input[i] {
                arr[j] = i + 1
                
                break
            } else {
                temp += 1
            }
        }
    }
}

print(arr.map{String($0)}.joined(separator: " "))