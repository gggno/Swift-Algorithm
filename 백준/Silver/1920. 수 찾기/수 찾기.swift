import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let m = Int(readLine()!)!
let t = readLine()!.split(separator: " ").map{Int($0)!}

func binarySearch(_ stand: [Int], _ target: Int) -> Int {
    var start = 0
    var end = stand.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if arr[mid] == target {
            return 1
        } else if arr[mid] > target {
            end = mid - 1
        } else if arr[mid] < target {
            start = mid + 1
        }
    }
    
    return 0
}

for i in t {
    print(binarySearch(arr, i))
}