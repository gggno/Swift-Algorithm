import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var takeMoney = 0
    
    for num in 1...count {
        takeMoney += price * num
    }
    
    return money >= takeMoney ? Int64(0) : Int64(takeMoney - money)
    
}