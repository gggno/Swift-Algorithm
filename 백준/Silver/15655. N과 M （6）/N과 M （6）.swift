import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var stack: [Int] = []

func dfs() {
    if stack.count == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in arr {
        if !stack.contains(i) && stack.filter({$0 >= i}).count == 0 {
            stack.append(i)
            dfs()
            stack.removeLast()
        }
    }
}

dfs()