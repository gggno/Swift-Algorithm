import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var arr: [String] = []
var stack: [Int] = []

var result: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

func dfs() {
    if stack.count == k {
        var str = ""
        for i in stack {
            str += arr[i]
        }
        result.append(str)
        
        return
    }
    
    for i in 0..<arr.count {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
    
}

dfs()
print(Set(result).count)