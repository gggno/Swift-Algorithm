import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let tArr = Array(t)
    var result = 0
    
    for i in 0..<t.count - p.count + 1 {
        var str = ""
        
        for j in i..<i+p.count {
            str += String(tArr[j])
        }
        
        if Int(str)! <= Int(p)! {
            result += 1
        }
    }
    
    return result
}