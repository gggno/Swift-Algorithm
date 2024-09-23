import Foundation

func solution(_ food:[Int]) -> String {
    
    var front: String = ""
    
    for i in 1...food.count-1 {
        // 대회에 사용하지 못하는 개수일 때
        if food[i] < 2 {
            continue
        }
        
        for _ in 0..<food[i] / 2 {
            front += String(i)
        }
    }

    return front + "0" + String(front.reversed())
}