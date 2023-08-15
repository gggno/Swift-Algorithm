import Foundation

func solution(_ babbling:[String]) -> Int {
    
    var speak = ["aya", "ye", "woo", "ma"]
    var result = 0
    
    for s in babbling {
        var temp = ""
        var str = ""
        var pre = ""
        
        for ss in s {
            temp += String(ss)
            for i in speak {

                if temp == String(i) && temp != pre {
                    str += temp
                    pre = temp
                    temp = ""
                }
            }
        }
        if str == s {
            result += 1
        }
    }
    
    return result
}