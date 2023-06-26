import Foundation

func solution(_ numbers:[Int]) -> Double {
    var cnt: Double = 0
    
    for num in numbers {
        cnt += Double(num)
    }
    return cnt / Double(numbers.count)
}