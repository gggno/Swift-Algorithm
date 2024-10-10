import Foundation

let t = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    
    var l: [Int] = []
    var r: [Int] = []
    
    for i in 0..<arr.count {
        if i % 2 == 0 {
            l.append(arr[i])
            
        } else {
            r.append(arr[i])
        }
    }

    arr = l + r.reversed()
    
    var cnt = Int.min
    
    for i in 0..<arr.count-1 {
        cnt = max(cnt, abs(arr[i] - arr[i+1]))
    }
    
    result.append(cnt)
}

for i in result {
    print(i)
}