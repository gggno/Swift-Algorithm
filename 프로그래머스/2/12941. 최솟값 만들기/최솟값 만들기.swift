import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var result = 0
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    
    return result
}