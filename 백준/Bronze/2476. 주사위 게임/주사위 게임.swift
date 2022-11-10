import Foundation

let input = Int(readLine()!)!
var resultArr: [Int] = []

for _ in 0...input-1 {
    let num = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    if num[0] == num[1] && num[1] == num[2] && num[0] == num[2] {
        resultArr.append(10000+num[0]*1000)
    } else if num[0] != num[1] && num[1] != num[2] && num[0] != num[2] {
        resultArr.append(num.max()!*100)
    } else {
        if num[0] == num[1]{
            resultArr.append(1000+num[0]*100)
        } else if num[1] == num[2] {
            resultArr.append(1000+num[1]*100)
        } else if num[0] == num[2] {
            resultArr.append(1000+num[0]*100)
        }
    }
}
print(resultArr.max()!)
