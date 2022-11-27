import Foundation

let input = Int(readLine()!)!
var res = Array(readLine()!)

var resultArr: [String] = []

if input > 1 {
    for i in 0...input-2 {
        let str = Array(readLine()!)
        for j in 0...str.count-1 {
            if res[j] == str[j] {
                continue
            } else if res[j] != str[j] {
                res[j] = "?"
            }
        }
    }
    resultArr.append(String(res))
    print(resultArr[0])
} else {
    resultArr.append(String(res))
    print(resultArr[0])
}

