import Foundation

func solution(_ s:String) -> Int {
   
    var answer = 0
    var x: Character? = nil
    var xCount = 0

    for i in s {
        
        if x == nil {
            x = i
            xCount += 1
            answer += 1
            continue
        }
        
        xCount += x == i ? 1 : -1
        
        if xCount == 0 {
            x = nil
        }
        
    }

    return answer
}