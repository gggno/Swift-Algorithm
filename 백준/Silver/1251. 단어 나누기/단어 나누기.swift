import Foundation

let input = Array(readLine()!)
var arr = [String]()

for i in 0..<input.count-2 {
    for j in i+1..<input.count-1 {
        for k in j+1..<input.count {
            arr.append("\(String(input[0..<j].reversed()))\(String(input[j..<k].reversed()))\(String(input[k..<input.count].reversed()))")
        }
    }
}

print(arr.sorted(by: <)[0])