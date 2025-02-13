import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []

func dfs() {
    if stack.count == n {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...n {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}

dfs()