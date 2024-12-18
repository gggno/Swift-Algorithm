import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]

var visited: [Bool] = Array(repeating: false, count: 100001)
visited[n] = true

var queue: [(Int, Int)] = [(n, 0)]
var index = 0
while index <= queue.count {
    let nn = queue[index].0, cnt = queue[index].1
    
    if nn == k {
        print(cnt)
        break
    }
    
    for i in 0..<3 {
        var new = 0
        
        switch i {
        case 0:
            new = nn + 1
        case 1:
            new = nn - 1
        default:
            new = nn * 2
        }
        
        if new >= 0 && new <= 100000 && !visited[new] {
            visited[new] = true
            queue.append((new, cnt+1))
        }
    }
    
    index += 1
}