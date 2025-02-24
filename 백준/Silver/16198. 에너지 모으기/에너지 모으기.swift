import Foundation

let n = Int(readLine()!)!
var result = 0
var sum = 0
var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

func dfs() {

    if arr.count == 2 {
        result = max(result, sum)
        return
    }

    for i in 1..<n - 1 {
        if i + 1 >= arr.count { continue }
        
        sum += arr[i - 1] * arr[i + 1]
        let pop = arr.remove(at: i)
        dfs()
        arr.insert(pop, at: i)
        sum -= arr[i - 1] * arr[i + 1]
    }
}

dfs()
print(result)