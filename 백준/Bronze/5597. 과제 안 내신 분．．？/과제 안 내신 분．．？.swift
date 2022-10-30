import Foundation

var numArr: [Int] = []

for i in 1...28 {
    let input = Int(readLine()!)!
    numArr.append(input)
}

for i in 1...30 {
    if (numArr.firstIndex(of: i) == nil) {
        print(i)
    }
}
