import Foundation

var str = readLine()!
var tag = ""
var word = ""

for s in str {
    
    if s == "<" {
        tag.append(s)
        if !word.isEmpty {
            print(String(word.reversed()), terminator: "")
            word = ""
        }
        
    } else if s == ">" {
        tag.append(s)
        print(tag, terminator: "")
        tag = ""
        
    } else {
        if tag.first == "<" {
            tag.append(s)
        } else if s == " " {
            print(String(word.reversed()), terminator: " ")
            word = ""
        } else {
            word.append(s)
        }
    }
}

if !word.isEmpty {
    print(String(word.reversed()))
}