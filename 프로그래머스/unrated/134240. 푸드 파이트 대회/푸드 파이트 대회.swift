import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    for i in food.indices {
        result += String(repeating: String(i), count: food[i] / 2)
    }
    
    // 한 선수가 먹는 음식의 배치 + 0 + 한 선수가 먹는 음식의 배치(뒤집기)
    return result + "0" + result.reversed()
}