import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var stack: [Int] = []
var answer = ""

func dfs() {
    if stack.count == m {
        answer += stack.map{String($0)}.joined(separator: " ")
        answer += "\n"
        return
    }
    
    for i in arr {
        if stack.filter{$0 > i}.count == 0 {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}

dfs()
print(answer)