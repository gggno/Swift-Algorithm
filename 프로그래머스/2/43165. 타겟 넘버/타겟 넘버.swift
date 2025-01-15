import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var result = 0
    
    func dfs(_ index: Int, _ num: Int) {
        if index == numbers.count {
            if num == target {
                result += 1
            }
            return
        }
        
        dfs(index+1, num + numbers[index])
        dfs(index+1, num - numbers[index])
    }
    
    dfs(0, 0)
    
    return result
}