import Foundation

let alpha = Array("abcdefghijklmnopqrstuvwxyz ")
var dic: [String:Int] = [:]

while true {
    let str = readLine()!
    var state = true
    
    if str == "*" {
        break
    }
    
    for i in alpha {
        dic[String(i)] = 0
    }
    
    for s in str {
        dic[String(s)]! += 1
    }
    
    for d in dic {
        if d.value == 0 && d.key != " " {
            print("N")
            state = false
            break
        }
    }
    if state {
        print("Y")
    }
}