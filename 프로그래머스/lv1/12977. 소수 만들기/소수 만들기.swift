import Foundation

func solution(_ nums:[Int]) -> Int {
    var cnt = 0
    var sum: [Int] = []
    
    for i in 0..<nums.count-2 {
        for j in 1+i..<nums.count-1 {
            for k in 1+j..<nums.count {
                let n = nums[i] + nums[j] + nums[k]
                sum.append(n)
               
                for num in 2...n-1 {
                    if (nums[i] + nums[j] + nums[k]) % num == 0 {
                        cnt += 1
                        break
                    }
                }
            }
        }
    }

    return sum.count - cnt
}