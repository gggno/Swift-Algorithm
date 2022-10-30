import Foundation

let cnt = Int(readLine()!)!

var result = 0

for _ in 0...cnt-1 {
    let word = readLine()!
    var cha: [Character] = []
    
    var token = true
    
    for j in word {
        if !cha.contains(j) {
            cha.append(j)
        } else if cha.last != j {
            token = false
        }
    }
    
    if token == true {
        result += 1
    }
}

print(result)
