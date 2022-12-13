import Foundation

var cntArr: [Int] = []

while 1 != 0 {
    let input = readLine()!
    var cnt = 0
    
    if input == "#" {
        break
    }
    
    let str = input.lowercased()
    
    for i in str {
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            cnt += 1
        }
    }
    cntArr.append(cnt)
}

for i in cntArr {
    print(i)
}
