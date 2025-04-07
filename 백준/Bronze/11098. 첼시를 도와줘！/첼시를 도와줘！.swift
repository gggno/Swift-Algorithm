import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    var money = 0, name = ""
    
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if money < Int(input[0])! {
            money = Int(input[0])!
            name = input[1]
        }
    }
    
    print(name)
}