import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    return (Int(left)...Int(right)).map{max($0 / n+1, $0 % n+1)}
}