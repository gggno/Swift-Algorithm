import Foundation

let man = readLine()!
let woman = readLine()!

let alpha: [Character:Int] = ["A":3, "B":2, "C":1, "D":2, "E":3, "F":3, "G":2, "H":3, "I":3, "J":2, "K":2, "L":1, "M":2, "N":2, "O":1, "P":2, "Q":2, "R":2, "S":1, "T":2, "U":1, "V":1, "W":1, "X":2, "Y":2, "Z":1]

var manArr: [Int] = []
for i in man {
    manArr.append(alpha[i]!)
}

var womanArr: [Int] = []
for i in woman {
    womanArr.append(alpha[i]!)
}

var resArr: [Int] = []
for i in 0..<manArr.count {
    resArr.append(manArr[i])
    resArr.append(womanArr[i])
}

for i in 0..<resArr.count-2 { // 0~3
    for j in 0..<resArr.count-(i+1) { // 0~4
        resArr[j] = (resArr[j] + resArr[j+1]) % 10
    }
}

print(resArr[0], terminator: "")
print(resArr[1])
