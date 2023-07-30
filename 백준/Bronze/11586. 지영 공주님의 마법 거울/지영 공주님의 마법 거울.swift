import Foundation

let n = Int(readLine()!)!
var arr: [[String]] = []

for i in 0..<n {
    arr.append(readLine()!.map{String($0)})
}
let k = Int(readLine()!)!

if k == 1 {
    for i in 0..<n {
        for j in 0..<n {
            print(arr[i][j], terminator: "")
        }
        print("")
    }
} else if k == 2 {
    for i in (0..<n) {
        for j in (0..<n).reversed() {
            print(arr[i][j], terminator: "")
        }
        print("")
    }
} else if k == 3 {
    for i in (0..<n).reversed() {
        for j in (0..<n) {
            print(arr[i][j], terminator: "")
        }
        print("")
    }
}