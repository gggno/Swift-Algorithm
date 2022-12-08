import Foundation

var resArr: [Int] = []

while 1 != 0 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    if input[0] == 0 && input[1] == 0 {
        break
    }
    
    let diff = input[0] - input[1]
    resArr.append(diff + input[0])
}

for i in resArr {
    print(i)
}
