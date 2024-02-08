import Foundation

let n = Int(readLine()!)!

for i in 0..<n {
    let arr = readLine()!.split(separator: " ").map{String($0)}
    var num = Double(arr[0])!
    
    for j in 1..<arr.count {
        switch arr[j] {
        case "@":
           num *= 3
        case "%":
            num += 5
        case "#":
            num -= 7
        default:
            print("de")
        }
    }
    print(String(format: "%.2f", num))
}