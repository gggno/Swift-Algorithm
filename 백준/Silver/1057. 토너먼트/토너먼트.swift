import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var kim = input[1]
var lim = input[2]
var round = 1

while true {
    if nextNumber(kim) == nextNumber(lim) {
        
        print(round)
        break
    }
    
    kim = (kim + 1) / 2
    lim = (lim + 1) / 2
    round += 1
    
}

func nextNumber(_ num: Int) -> Int {
    let n = (num + 1) / 2
    return n
}
