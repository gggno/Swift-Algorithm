import Foundation

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var cnt = 0
    
    if input.contains(-1) {
        break
    }
    
    for i in input {
        if input.contains(i*2) && i != 0 {
            cnt += 1
        }
    }
    
    print(cnt)
}