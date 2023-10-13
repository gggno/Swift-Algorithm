import Foundation

let mother: [String] = ["a", "e", "i", "o", "u"]
var result: [String] = []

while true {
    var moCnt = 0
    var jaCnt = 0
    var before = ""
    
    let str = readLine()!
    
    if str == "end" {
        break
    }
    
    var state2 = false
    for s in str {
        if mother.contains(String(s)) {
            state2 = true
            break
        }
    }
    if !state2 {
        print("<\(str)> is not acceptable.")
        continue
    }
    
    for s in str {
        if mother.contains(String(s)) {
            moCnt += 1
            jaCnt = 0
        } else {
            jaCnt += 1
            moCnt = 0
        }
        
        if moCnt >= 3 || jaCnt >= 3 {
            break
        }
    }
    if moCnt >= 3 || jaCnt >= 3 {
        print("<\(str)> is not acceptable.")
        continue
    }
    
    var state = true
    for s in str {
        if before == String(s) {
            if s == "e" || s == "o" {
                before = String(s)
                continue
            } else {
                state = false
                break
            }
        } else {
            before = String(s)
        }
    }
    if !state {
        print("<\(str)> is not acceptable.")
        continue
    }
    
    print("<\(str)> is acceptable.")
}