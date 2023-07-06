import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var compare: [Character] = []
    
    for cha in s {
        if !compare.contains(cha) {
            compare.append(cha)
            result.append(-1)
        } else {
            var cnt = 1
            for i in (0..<compare.count).reversed() {
                if compare[i] == cha {
                    compare.append(cha)
                    result.append(cnt)
                  
                    break
                }
                cnt += 1
            }
               
        }
        
    }
    
    return result
}