import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alpha = "abcdefghijklmnopqrstuvwxyz".map{String($0)}.filter{!skip.contains($0)}
    
    return s
    .map {alpha[alpha.index(alpha.firstIndex(of: String($0))!, offsetBy: index) % alpha.count]}
    .joined()
}
