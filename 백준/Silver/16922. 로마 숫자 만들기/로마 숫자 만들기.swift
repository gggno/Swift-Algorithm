let n = Int(readLine()!)!

let arr = [1, 5, 10, 50]
var visited = Array(repeating: false, count: 1001)

var result = 0

func dfs(_ cnt: Int, _ d: Int, _ total: Int) {
    if cnt == n {
        if !visited[total] {
            visited[total] = true
            result += 1
        }
        return
    }
    
    for i in d..<4 {
        dfs(cnt + 1, i, total + arr[i])
    }
}

dfs(0, 0, 0)
print(result)
