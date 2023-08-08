import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var stack: [Int] = []
var visited: [Bool] = Array(repeating: false, count: arr.count)
var answer = ""

func dfs() {
    if stack.count == m {
        answer += stack.map{String($0)}.joined(separator: " ")
        answer += "\n"
        return
    }
    
    var pre = 0
    for i in 0..<arr.count {
        if !visited[i] && pre != arr[i] && stack.filter{$0 > arr[i]}.count == 0 {
            stack.append(arr[i])
            pre = arr[i]
            visited[i] = true
            dfs()
            stack.removeLast()
            visited[i] = false
        }
    }
}

dfs()
print(answer)