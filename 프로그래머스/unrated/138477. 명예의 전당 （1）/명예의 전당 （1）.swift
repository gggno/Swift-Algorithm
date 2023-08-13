import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var temp: [Int] = []
    var result: [Int] = []
    
    if k > score.count {
        for i in score {
            temp.append(i)
            result.append(temp.min()!)
        }
        return result
    }
    
    for i in 0..<k {
        temp.append(score[i])
        result.append(temp.min()!)
    }
    temp.sort()
    
    for i in k..<score.count {
        if temp[0] < score[i] {
            temp[0] = score[i]
            temp.sort()
        }
        result.append(temp[0])
    }
    
    return result
}
