import Foundation

let k = Int(readLine()!)!

for i in 0..<k {
    var arr = readLine()!.split(separator: " ").map{Int($0)!}
    arr.removeFirst()
    arr = arr.sorted(by: >)
    var maxGap = 0
    for j in 0..<arr.count-1 {
        let gap = abs(arr[j] - arr[j+1])
        if maxGap < gap {
            maxGap = gap
        }
    }
    print("Class \(i+1)")
    print("Max \(arr.max()!), Min \(arr.min()!), Largest gap \(maxGap)")
}