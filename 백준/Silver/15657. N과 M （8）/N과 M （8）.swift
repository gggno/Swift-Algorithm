import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var stack: [String] = []
var answer = ""

func dfs() {
    if stack.count == m {
        answer += stack.joined(separator: " ")
        answer += "\n"
        return
    }
    
    for i in arr {
        if stack.filter({Int($0)! > i}).count == 0 {
            stack.append(String(i))
            dfs()
            stack.removeLast()
        }
    }
    
}

dfs()
print(answer)