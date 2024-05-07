import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    
    var bag: [[Int]] = []
    var prefixSum: [Int] = [0]

    for num in sequence {
        prefixSum.append(prefixSum.last! + num)
    }

    var left = 0
    var right = 0
    
    while right < prefixSum.count {
        let sum = prefixSum[right] - prefixSum[left]
        
        if sum == k {
            bag.append([left, right - 1])
            left += 1
        
        } else if sum < k {
            right += 1
        
        } else {
            left += 1
        }
    }

    let result = bag.sorted { $0[1] - $0[0] < $1[1] - $1[0] }
    return result[0]
}