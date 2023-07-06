import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0  
    var cnt = 0
    var nn = n   
    
    while nn >= a {
        cnt = (nn / a) * b
        result += cnt
        nn = (nn % a) + cnt
    }
    
    return result
}