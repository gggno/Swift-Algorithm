import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var zero = 0
    var radixCnt = 0
    
    while str.count != 1 {
        for c in str {
            if c == "0" {
                zero += 1
            }
        }
        str = str.replacingOccurrences(of: "0", with: "")
        str = String(str.count, radix : 2)
        radixCnt += 1
    }
    return [radixCnt, zero]
}