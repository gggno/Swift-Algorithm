import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], d = input[1]

var cnt = 0

for i in 1...n {
    for j in String(i) {
        if String(j) == String(d) {
            cnt += 1
        }
    }
}

print(cnt)