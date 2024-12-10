import Foundation

var t = Int(readLine()!)!

var result: [Int] = []

for _ in 0..<t {
    let n = Int(readLine()!)!
    var dic: [String: [String]] = [:]
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if dic[input[1]] == nil {
            dic[input[1]] = [input[0]]
        } else {
            dic[input[1]]! += [input[0]]
        }
    }
    var cnt = 1
    
    for i in dic {
        cnt *= i.value.count + 1
    }
    
    result.append(cnt - 1)
}

for i in result {
    print(i)
}