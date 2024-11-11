import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]

let input2 = readLine()!.split(separator: " ")
let name1 = input2[0].map{String($0)}, name2 = input2[1].map{String($0)}

let alpha: [Character: Int] = ["A":3, "B":2, "C":1, "D":2, "E":4, "F":3, "G":1, "H":3, "I":1, "J":1, "K":3, "L":1, "M":3, "N":2, "O":1, "P":2, "Q":2, "R":2, "S":1, "T":2, "U":1, "V":1, "W":1, "X":2, "Y":2, "Z":1]
var str: String = ""

if name1.count >= name2.count {
    for i in 0..<name2.count {
        str += name1[i]
        str += name2[i]
    }
    
    for i in name2.count..<name1.count {
        str += name1[i]
    }
    
} else {
    for i in 0..<name1.count {
        str += name1[i]
        str += name2[i]
    }
    
    for i in name1.count..<name2.count {
        str += name2[i]
    }
}

var arr: [Int] = []

for i in str {
    arr.append(alpha[i]!)
}

while arr.count > 2 {
    var temp: [Int] = []
    
    for i in 0..<arr.count-1 {
        temp.append(arr[i] + arr[i+1] >= 10 ? (arr[i] + arr[i+1]) % 10 : arr[i] + arr[i+1])
    }
    
    arr = temp
}

print(arr[0] == 0 ? "\(arr[1])%" : "\(arr[0])\(arr[1])%")