import Foundation

let n = Int(readLine()!)!

if n < 100 {
    print(n)
} else {
    var count = 99
    
    for i in 100...n {
        let first = i / 100
        let second = (i % 100) / 10
        let third = (i % 100) % 10
        
        if first - second == second - third {
            count += 1
        }
    }
    
    print(count)
}