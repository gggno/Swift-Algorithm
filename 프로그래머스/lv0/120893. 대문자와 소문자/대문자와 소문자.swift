import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    
    for cha in my_string {
        if cha.uppercased() == String(cha) {
            result += cha.lowercased()
        } else {
            result += cha.uppercased()
        }
    }
    
    return result
}
