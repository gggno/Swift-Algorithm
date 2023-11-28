import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var answer: [Int] = []
    var dic: [String: [[Int]]] = [:]
    
    for i in 0..<plays.count {
        if dic[genres[i]] == nil {
            dic[genres[i]] = [[i, plays[i]]]
        } else {
            dic[genres[i]]!.append([i, plays[i]])
        }
    }
    
    let sortedDict = dic.sorted { (first, second) -> Bool in
        return first.value.map { $0[1] }.reduce(0, +) > second.value.map { $0[1] }.reduce(0, +)
    }
    
    for idx in 0..<sortedDict.count {
        let item = sortedDict[idx].value.sorted { (first, second) -> Bool in
            return first[1] == second[1] ? false : first[1] > second[1]
        }
        
        for idx in 0..<item.count {
            if idx > 1 {
                break
            }
            
            answer.append(item[idx][0])
        }
    }
    
    return answer
}