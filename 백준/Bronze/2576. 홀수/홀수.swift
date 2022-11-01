import Foundation

var num: [Int] = []
var num2: Int = 0

for _ in 0...6 {
    let input = Int(readLine()!)!
    
    if input > 0 && input < 100 {
        if input % 2 != 0 {
            num.append(input)
            num2 += input
        }
    }
}

if num.isEmpty {
    print("-1")
} else {
    print(num2)
    print(num.min()!)
}
