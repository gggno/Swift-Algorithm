let N = Int(readLine()!)!
var nodes = Array(repeating: [Int](), count: N+1)
while true {
    let q = readLine()!.split(separator : " " ).map{Int(String($0))!}
    if q[0] == -1, q[1] == -1 { break }
    nodes[q[0]].append(q[1])
    nodes[q[1]].append(q[0])
}

func bfs(_ cur: Int ) -> Int {
    var visit = Array(repeating: false, count: N+1)
    var queue = [(cur,0)]
    var q = 0
    visit[cur] = true
    var score = 0
    while queue.count > q {
        let f = queue[q]
        q += 1
        score = max(score, f.1)
        for next in nodes[f.0] {
            if visit[next] { continue }
            visit[next] = true
            queue.append((next,f.1+1))
        }
    }
    return score
}

var score = Int.max
var list = [Int]()
for i in 1...N {
    let s = bfs(i)
    if score >= s {
        if score > s {
            list = [i]
        } else {
            list.append(i)
        }
        score = s
    }
}

print(score, list.count)
list.forEach{print($0, terminator: " ")}
