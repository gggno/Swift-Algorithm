import Foundation

func solution(_ money:Int) -> [Int] {
    
    let a = money / 5500
    let b = money % 5500
    let arr = [a, b]
    return arr
}