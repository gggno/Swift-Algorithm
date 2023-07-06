import Foundation

func solution(_ rsp:String) -> String {
    var result = ""
    
    for cha in rsp {
        if cha == "2" { 
            result += "0"
        } else if cha == "0" {
            result += "5"
        } else {
            result += "2"
        }
    }
    
    return result
}