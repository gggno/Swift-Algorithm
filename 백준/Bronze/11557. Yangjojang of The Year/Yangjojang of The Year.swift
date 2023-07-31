import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var max = 0
    var result = ""
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{String($0)}
        let s = input[0]
        let l = Int(input[1])!
        
        if max < l {
            max = l
            result = s
        }
    }
    print(result)
}