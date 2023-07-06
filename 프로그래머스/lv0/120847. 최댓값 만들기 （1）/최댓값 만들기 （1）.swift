import Foundation

func solution(_ numbers:[Int]) -> Int {
    var arr = numbers.sorted()
    
    return arr[arr.count-1] * arr[arr.count-2]
}