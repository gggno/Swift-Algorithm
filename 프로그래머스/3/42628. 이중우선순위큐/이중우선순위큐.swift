import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    var queue: [Int] = []
    
    for i in operations {
        let data = i.split(separator: " ").map{String($0)}
        
        if data[0] == "I" {
            queue.append(Int(data[1])!)
        } else {
            if !queue.isEmpty {
                if data[1] == "1" {
                    let maxIndex = queue.firstIndex(of: queue.max()!)!
                    queue.remove(at: maxIndex)
                } else {
                    let minIndex = queue.firstIndex(of: queue.min()!)!
                    queue.remove(at: minIndex)
                }
            }
        }
    }
    
    if queue.isEmpty {
        return [0, 0]
    } else {
        return [queue.max()!, queue.min()!]
    }
}