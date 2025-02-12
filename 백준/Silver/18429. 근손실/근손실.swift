import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

let arr = readLine()!.split(separator: " ").map{Int($0)! - k}
var visited: [Bool] = Array(repeating: false, count: n)
var weight = 500

var result = 0

func dfs(_ count: Int) {
    if count == n {
        result += 1
        return
    }
    
    for i in 0..<n {
        if !visited[i] {
            visited[i] = true
            if weight + arr[i] >= 500 {
                weight += arr[i]
                dfs(count + 1)
                weight -= arr[i]
            }
            visited[i] = false
        }
    }
}

dfs(0)
print(result)