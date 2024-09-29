import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failDic: [Int:Double] = [:]
    var arrCnt = stages.count

    for i in 1...N {
        var failCnt = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                failCnt += 1
            }
        }
        
        failDic[i] = Double(failCnt) / Double(arrCnt)
        arrCnt -= failCnt
    }
    
    let result = failDic.sorted(by: <).sorted{ $0.1 > $1.1 }    
    let last = result.map {$0.key}

    return last
}