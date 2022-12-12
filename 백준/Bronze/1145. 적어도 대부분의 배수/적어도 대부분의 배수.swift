import Foundation

var numArr: [Int] = []

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in input {
    numArr.append(i)
}

var num = numArr.min()!

while 1 != 0 {
    var cnt = 0
    for i in input {
        if num % i == 0 {
            cnt += 1
        }
    }
    
    if cnt > 2 {
        print(num)
        break
    }
    
    num += 1
}
