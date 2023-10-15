import Foundation

var result: [String] = []

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    if input[0] == 0 {
        result.removeLast()
        break
    }
    
    var t = input
    t.remove(at: 0)
    
    var stack: [Int] = []
    
    dfs()
    result.append("")
    
    func dfs() {
        if stack.count == 6 {
            result.append(stack.map{String($0)}.joined(separator: " "))
            return
        }
        
        for i in t {
            if !stack.contains(i) && stack.filter{$0 > i}.count == 0 {
                stack.append(i)
                dfs()
                stack.removeLast()
            }
        }
    }
}

for i in result {
    print(i)
}