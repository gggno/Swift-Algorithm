import Foundation

let n = readLine()!.split(separator: " ").map{ Int($0)! }

var a = Array(repeating: Array(repeating: 0, count: n[1]), count: n[0])

for i in 0..<n[0] {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    
    for j in 0..<input.count {
        a[i][j] = input[j]
    }
}


let m = readLine()!.split(separator: " ").map{ Int($0)! }

var b = Array(repeating: Array(repeating: 0, count: m[1]), count: m[0])

for i in 0..<m[0] {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    
    for j in 0..<input.count {
        b[i][j] = input[j]
    }
}

for i in a {
    var arr: [String] = []
    
    for j in 0..<m[1] {
        var num: Int = 0
        
        for k in 0..<m[0] {
            num += i[k] * b[k][j]
        }
        arr.append(String(num))
    }
    print(arr.joined(separator: " "))
}