import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var arr: [String] = []
    
    for i in goal {
        arr.append(i)
        
        if cards1.contains(i) {
            let index = cards1.firstIndex(of: i)!
            for j in index+1..<cards1.count {
                if arr.contains(cards1[j]) {
                    return "No"
                }
            }
            for j in 0..<index {
                if !arr.contains(cards1[j]) {
                    return "No"
                }
            }
        } else if cards2.contains(i) {
            let index = cards2.firstIndex(of: i)!
            for j in index+1..<cards2.count {
                if arr.contains(cards2[j]) {
                    return "No"
                }
            }
            for j in 0..<index {
                if !arr.contains(cards2[j]) {
                    return "No"
                }
            }
        }
    }

    return "Yes"
}