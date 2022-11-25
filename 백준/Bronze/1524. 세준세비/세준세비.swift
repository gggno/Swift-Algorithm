import Foundation

let testCase = Int(readLine()!)!

for _ in 0...testCase-1 {
    readLine()
    readLine()
    
    let S = readLine()!.split(separator: " ").map{Int(String($0))!}.max()!
    let B = readLine()!.split(separator: " ").map{Int(String($0))!}.max()!
    
    print(S < B ? "B" : "S")
}
