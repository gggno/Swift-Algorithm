import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var visited = Array(repeating: false, count: n)
//var stack: [Int] = []
var result = 0

func dfs(_ stack: [Int]) {
    if stack.count == n {
        result = max(result, getMax(stack))
        return
    }
    
    for i in 0..<arr.count {
        if !visited[i] {
            visited[i] = true
            dfs(stack + [arr[i]])
            visited[i] = false
        }
    }
}

func getMax(_ stack: [Int]) -> Int {
    var cnt = 0
    for i in 0..<stack.count-1 {
        cnt += abs(stack[i] - stack[i+1])
    }
    return cnt
}

dfs([])
print(result)