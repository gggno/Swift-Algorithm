import Foundation

var result: [String] = []

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    let a = input[0], b = input[1], c = input[2]
    
    if a == 0 && b == 0 && c == 0 { break }
    
    if a >= b + c {
        result.append("Invalid")
        continue
    }
    
    if a == b && b == c {
        result.append("Equilateral")
    } else if (a == b && b != c) || (a == c && c != b) || (b == c && c != a) {
        result.append("Isosceles")
    } else if a != b && a != c && b != c {
        result.append("Scalene")
    }
}

result.forEach { print($0) }