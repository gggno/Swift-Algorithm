import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let acs = A.sorted(by: <)
    let des = B.sorted(by: >)
    var result = 0
    
    for i in 0..<acs.count {
        result += acs[i]*des[i]
    }

    return result
}