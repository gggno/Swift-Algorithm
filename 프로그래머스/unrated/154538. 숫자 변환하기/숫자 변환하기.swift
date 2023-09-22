import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var data: Set<Int> = [x]
    var result = 0
    
    while !data.isEmpty {
        if data.contains(y) {
            return result
        }
        
        var newData: Set<Int> = []
        for i in data {
            if i + n <= y {
                newData.insert(i+n)
            }
            
            if i * 2 <= y {
                newData.insert(i*2)
            }
            
            if i * 3 <= y {
                newData.insert(i*3)
            }
        }
        
        data = newData
        result += 1
    }
    
    return -1
}