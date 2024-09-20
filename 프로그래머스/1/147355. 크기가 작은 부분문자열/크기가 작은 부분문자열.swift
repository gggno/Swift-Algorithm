import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    let length = p.count
    let tt = Array(t)
    var result = 0
    
    for i in 0..<tt.count - length + 1 {
        var str = ""

        for j in i..<i+length {
            str += String(tt[j])
        }
        
        if Int(str)! <= Int(p)! {
            result += 1
        }
    }
    
    return result
}