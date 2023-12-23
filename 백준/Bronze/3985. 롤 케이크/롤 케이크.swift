import Foundation

let l = Int(readLine()!)!
let n = Int(readLine()!)!

var a = 0
var aNum = 0

var arr = Array(repeating: true, count: l+1)
var dic: [Int: Int] = [:]

for i in 0..<n {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    
    if aNum < nums[1]-nums[0]+1 {
        aNum = nums[1]-nums[0]+1
        a = i+1
    }
    
    var cnt = 0
    for j in nums[0]...nums[1] {
        if arr[j] == true {
            cnt += 1
            arr[j] = false
        }
    }
    dic[i+1] = cnt
}

print(a)
print(dic.sorted{$0.0 < $1.0}.sorted{$0.1 > $1.1}.first!.key)
