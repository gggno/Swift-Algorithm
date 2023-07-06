import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    var cnt = 0
    
    for cha in cipher {
        cnt += 1
        if cnt % code == 0 {
            result += String(cha)
        }
    }
    
    
    return result
}