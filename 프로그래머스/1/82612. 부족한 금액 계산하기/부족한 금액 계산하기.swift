import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var answer:Int64 = 0
    var cnt:Int64 = 0
    
    for i in 1...count {
        cnt += Int64(price) * Int64(i)
    }
    
    if cnt > money {
        answer = Int64(cnt) - Int64(money)
    }
    
    return answer
}