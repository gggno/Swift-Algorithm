import Foundation

var result: [String] = []

for i in 0...2 {
    let input = readLine()?.split(separator: " ")
    var num = 0
    for j in 0...3 {
        num += Int(input![j])!
    }
    if num == 3 {
        result.append("A")
    } else if num == 2 {
        result.append("B")
    }  else if num == 1 {
        result.append("C")
    } else if num == 0 {
        result.append("D")
    } else {
        result.append("E")
    }
}
for i in 0...2 {
    print(result[i])
}
