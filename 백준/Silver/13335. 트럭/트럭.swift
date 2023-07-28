import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let w = input[1]
let l = input[2]
var nums = readLine()!.split(separator: " ").map{Int($0)!}

var weight = 0
var queue = Array(repeating: 0, count: w)
queue[0] = nums[0]
weight += nums[0]
nums.removeFirst()
var time = 1

while true {
    var count = 0
    
    for i in queue {
        if i != 0 {
            count += 1
        }
    }
    
    if count == 0 {
        break
    }
    
    if queue[w-1] != 0 {
        let pop = queue[w-1]
        weight -= pop
        queue[w-1] = 0
    }
    
    for i in (0..<w-1).reversed() {
        queue[i+1] = queue[i]
        queue[i] = 0
    }
    
    if let num = nums.first {
        if weight + num <= l {
            weight += num
            queue[0] = num
            nums.removeFirst()
        }
    }
    
    time += 1
}
print(time)