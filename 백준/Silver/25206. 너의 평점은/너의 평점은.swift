import Foundation

let dic: [String: Double] = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0.0]
var grade: Double = 0
var score: Double = 0

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ").map {String($0)}
    if let s = dic[input[2]] {
        grade += Double(input[1])! * s
        score += Double(input[1])!
    }
}

print(grade/score)