import Foundation

var arr = readLine()!.split(separator: " ").map{Int($0)!}

while arr != [1, 2, 3, 4, 5] {
    (0...3).forEach { idx in
        if arr[idx] > arr[idx+1] {
            arr.swapAt(idx, idx+1)
            print(arr.map{String($0)}.joined(separator: " "))
        }
    }
}