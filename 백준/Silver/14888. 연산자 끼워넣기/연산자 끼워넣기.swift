import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}
var oper = readLine()!.split(separator: " ").map{Int($0)!}

var maxValue = Int.min
var minValue = Int.max

func dfs(_ num: Int, _ cnt: Int) {
    
    if cnt == n {
        maxValue = max(num, maxValue)
        minValue = min(num, minValue)
    }
    
    for i in 0..<4 {
        if oper[i] < 1 {
            continue
        }
        
        oper[i] -= 1
        switch i {
        case 0:
            dfs(num + nums[cnt], cnt + 1)
        case 1:
            dfs(num - nums[cnt], cnt + 1)
        case 2:
            dfs(num * nums[cnt], cnt + 1)
        case 3:
            dfs(num / nums[cnt], cnt + 1)
        default:
            break
        }
        oper[i] += 1
    }
}

dfs(nums[0], 1)

print(maxValue)
print(minValue)