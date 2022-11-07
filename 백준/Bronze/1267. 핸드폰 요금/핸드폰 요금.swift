import Foundation

let input = Int(readLine()!)!


let num = readLine()!.split(separator: " ")
var y = 0
var m = 0

for i in 0...num.count-1 { // 영식
    if Int(num[i])! % 30 >= 0 {
        y += ((Int(num[i])! / 30) * 10) + 10
    } else if (Int(num[i])! / 30) == 0 {
        y += ((Int(num[i])! / 30) * 10)
    }
}

for i in 0...num.count-1 { // 민식
    if Int(num[i])! % 60 >= 0 {
        m += ((Int(num[i])! / 60) * 15) + 15
    } else if (Int(num[i])! / 60) == 0 {
        m += ((Int(num[i])! / 60) * 15)
    }
}

if y > m {
    print("M \(m)")
} else if y < m {
    print("Y \(y)")
} else {
    print("Y M \(y)")
}
