import Foundation

func solution(_ array:[Int]) -> Int {
    var sortedArr = array.sorted()
    
    return sortedArr[(sortedArr.count / 2)]
}