import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var arr = players
    var dic: [String:Int] = [:]
    
    for i in 0..<arr.count {
        dic[arr[i]] = i
    }
    
    for i in callings {
        let index = dic[i]!
        
        let temp = arr[index]
        arr[index] = arr[index-1]
        arr[index-1] = temp
        
        dic[i]! -= 1
        dic[arr[index]]! += 1
    }
    
    
    return arr
}