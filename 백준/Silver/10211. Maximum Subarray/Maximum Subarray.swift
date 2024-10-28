import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    
    var sum = 0, ans = arr[0]
    
    for i in arr {
        sum = max(i, sum+i)
        ans = max(ans, sum)
    }
    
    print(ans)
}