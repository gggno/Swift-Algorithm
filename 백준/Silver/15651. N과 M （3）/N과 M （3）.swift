import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

var stack: [Int] = []
var answer = ""

func dfs() {
    if stack.count == m {
        answer += stack.map{String($0)}.joined(separator: " ")
        answer += "\n"
        return
    }
    
    for i in 1...n {
        stack.append(i)
        dfs()
        stack.removeLast()
    }
}
dfs()
print(answer)