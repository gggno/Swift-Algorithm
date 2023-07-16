import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}

var n1 = input[0]
var n2 = input[1]
var n3 = input[2]

if n1 + n2 == n3 {
    print("\(n1)+\(n2)=\(n3)")
} else if n1 - n2 == n3 {
    print("\(n1)-\(n2)=\(n3)")
} else if n1 * n2 == n3 {
    print("\(n1)*\(n2)=\(n3)")
} else if n1 / n2 == n3 {
    print("\(n1)/\(n2)=\(n3)")
    
} else if n2 + n3 == n1 {
    print("\(n1)=\(n2)+\(n3)")
} else if n2 - n3 == n1 {
    print("\(n1)=\(n2)-\(n3)")
} else if n2 * n3 == n1 {
    print("\(n1)=\(n2)*\(n3)")
} else if n2 / n3 == n1 {
    print("\(n1)=\(n2)/\(n3)")
}