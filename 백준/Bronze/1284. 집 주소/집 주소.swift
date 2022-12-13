import Foundation

var cntArr: [Int] = []

while 1 != 0 {
    let input = readLine()!
    var cnt = 2
    
    if input == "0" {
        break
    }
    
    for i in input {
        if i == "0" {
            cnt += 4
        } else if i == "1" {
            cnt += 2
        } else {
            cnt += 3
        }
    }
    cnt += input.count-1
    
    cntArr.append(cnt)
}

for i in cntArr {
    print(i)
}
