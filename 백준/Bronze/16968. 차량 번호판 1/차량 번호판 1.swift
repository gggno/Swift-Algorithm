import Foundation

let input = readLine()!.map{String($0)}

var result = 0

if input[0] == "d" {
    result = 10
} else {
    result = 26
}

for i in 1..<input.count {
    if input[i-1] == input[i] { // 이전과 같은 타입일 때
        if input[i] == "d" {
            result *= 9
        } else {
            result *= 25
        }
    } else {
        if input[i] == "d" {
            result *= 10
        } else {
            result *= 26
        }
    }
}

print(result)