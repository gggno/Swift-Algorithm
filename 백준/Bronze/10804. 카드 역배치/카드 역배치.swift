import Foundation

var arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

for _ in 0..<10 {
    let range = readLine()!.split(separator: " ").map{Int($0)!}
    var ar: [Int] = []
    
    for i in (range[0]-1...range[1]-1).reversed() {
        ar.append(arr[i])
    }
    
    var cnt = 0
    for i in range[0]-1...range[1]-1 {
        arr[i] = ar[cnt]
        cnt += 1
    }
}

for i in arr {
    print(i, terminator: " ")
}