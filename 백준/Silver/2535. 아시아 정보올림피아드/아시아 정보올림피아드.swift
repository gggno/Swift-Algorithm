import Foundation

let n = Int(readLine()!)!

var dic: [[Int]: Int] = [:]

for _ in 0..<n {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    if dic[[num[0], num[1]]] == nil {
        dic[[num[0], num[1]]] = num[2]
    }
}

let dic2 = dic.sorted{$0.1 > $1.1}

var result: [[Int]: Int] = [:]

for i in dic2 {
    if result.count == 3 {
        break
    }
    
    var cnt = 0
    for j in result {
        if j.0[0] == i.0[0] {
            cnt += 1
        }
    }
    
    if cnt >= 2 {
        continue
    } else {
        if result[i.0] == nil {
            result[i.0] = i.1
        }
    }
    
}

for i in result.sorted{$0.1 > $1.1} {
    print(i.0.map{String($0)}.joined(separator: " "))
}