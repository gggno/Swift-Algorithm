import Foundation

let t = Int(readLine()!)!
var res: [Int] = []

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0], b = input[1]
    
    var result = 0
    
    if a == 0 {
        result += 0
    } else if a == 1 {
        result += 5000000
    } else if a <= 3 {
        result += 3000000
    } else if a <= 6 {
        result += 2000000
    } else if a <= 10 {
        result += 500000
    } else if a <= 15 {
        result += 300000
    } else if a <= 21 {
        result += 100000
    }
    
    if b == 0 {
        result += 0
    } else if b == 1 {
        result += 5120000
    } else if b <= 3 {
        result += 2560000
    } else if b <= 7 {
        result += 1280000
    } else if b <= 15 {
        result += 640000
    } else if b <= 31 {
        result += 320000
    }
    
    res.append(result)
}

for i in res {
    print(i)
}