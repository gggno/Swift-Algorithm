import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var visited: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var resultMax = Int.min
var resultMin = Int.max

func dfs(_ count: Int, _ value: Int) {
    if count == n {
        resultMax = max(resultMax, value)
        resultMin = min(resultMin, value)
        return
    }
    
    for i in 0..<4 {
        if visited[i] != 0 {
            var value = value
            visited[i] -= 1
            
            if i == 0 {
                value += arr[count]
            } else if i == 1 {
                value -= arr[count]
            } else if i == 2 {
                value *= arr[count]
            } else if i == 3 {
                value /= arr[count]
            }
            
            dfs(count+1, value)
            visited[i] += 1
        }
    }
}

dfs(1, arr[0])
print(resultMax)
print(resultMin)