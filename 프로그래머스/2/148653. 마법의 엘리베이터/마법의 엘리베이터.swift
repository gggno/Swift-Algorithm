import Foundation

func solution(_ storey:Int) -> Int {
    var storey = storey
    var count: Int = 0
    
    while storey != 0 {
        let n = storey % 10
        
        if n >= 6 || n == 5 && (storey / 10) % 10 >= 5 {
            storey += 10 - n
            count += 10 - n
        } else {
            storey -= n
            count += n
        }
        
        storey /= 10
    }
    
    return count
}