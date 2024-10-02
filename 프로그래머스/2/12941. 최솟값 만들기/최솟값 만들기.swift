import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var cnt = 0
    var a = A.sorted(by: <)
    var b = B.sorted(by: >)

    for i in 0..<A.count {
        cnt += a[i] * b[i]
    }
    
    return cnt
}