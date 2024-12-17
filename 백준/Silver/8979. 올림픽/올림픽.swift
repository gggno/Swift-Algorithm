import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var arr: [[Int]] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

arr = arr.sorted{$0[3] > $1[3]}.sorted{$0[2] > $1[2]}.sorted{$0[1] > $1[1]}

for i in 0..<n {
    if arr[i][0] == k {
        var index = i
        while true {
            if index <= 0 {
                print(1)
                break
            }
            
            if arr[index-1][1...] == arr[index][1...] {
                index -= 1
            } else {
                print(index+1)
                break
            }
        }
        break
    }
}