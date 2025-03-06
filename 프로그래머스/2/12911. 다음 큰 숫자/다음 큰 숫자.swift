import Foundation

func solution(_ n:Int) -> Int {
   
    let nOne = String(n, radix: 2)
    var num = n+1
    
    while true {
        let nTwo = String(num, radix: 2)
        
        let cnt1 = nOne.filter{$0 == "1"}.count
        let cnt2 = nTwo.filter{$0 == "1"}.count
        
        if cnt1 == cnt2 {
            return num
        } else {
            num += 1
        }
    }
    
}