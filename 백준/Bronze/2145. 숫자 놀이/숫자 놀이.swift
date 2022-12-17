import Foundation

var resArr:[String] = []

while true {
    var input = readLine()!
    var cnt = 0
    
    if input == "0" {
        break
    }
    
    while Int(String(input))! > 9 {
        for i in input {
            cnt += Int(String(i))!
        }
        input = String(cnt)
        cnt = 0
    }
    resArr.append(input)
}

for i in resArr {
    print(i)
}
