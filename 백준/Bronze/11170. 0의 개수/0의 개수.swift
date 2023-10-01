import Foundation

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let n = input[0], m = input[1]
    var cnt = 0
    
    for i in n...m {
        for j in String(i) {
            if j == "0" {
                cnt += 1
            }
        }
    }
    print(cnt)
}