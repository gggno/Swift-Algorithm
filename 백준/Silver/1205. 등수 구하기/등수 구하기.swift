import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], tae = input[1], p = input[2]

var list: [Int] = []

var result = 1

if n > 0 {
    list = readLine()!.split(separator: " ").map{Int($0)!}
} else {
    print(1)
    exit(0)
}

if n == p && tae <= list.last! {
    print(-1)
    exit(0)
}

for i in list {
    if i > tae {
        result += 1
    }
}

print(result)