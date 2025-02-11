import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var stack: [Int] = []
    var result = 0
    
    func dfs(_ cnt: Int,_ pirodo: Int) {
        if cnt > result {
            result = cnt
        }
        
        for i in 0..<dungeons.count {
            if !stack.contains(i) && pirodo >= dungeons[i][0] {
                stack.append(i)
                dfs(cnt+1, pirodo-dungeons[i][1])
                stack.removeLast()
            }
        }
    }
    
    dfs(0, k)
    
    return result
}