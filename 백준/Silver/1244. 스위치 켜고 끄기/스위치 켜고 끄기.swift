import Foundation

let input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
let cnt = Int(readLine()!)!

for i in 0..<cnt {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    
    if num[0] % 2 != 0 { // 홀수(남자)
        var n = num[1]
        var count = 2
        while n <= arr.count {
            if arr[n-1] == 1 {
                arr[n-1] = 0
                n = num[1] * count
                count += 1
            } else {
                arr[n-1] = 1
                n = num[1] * count
                count += 1
            }
        }
    } else { // 짝수(여자)
        let n = num[1] - 1
        var before = n-1
        var after = n+1
        
        while before >= 0 && after < arr.count && arr[before] == arr[after] {
            
            if arr[before] == 1 {
                arr[before] = 0
                arr[after] = 0
            } else {
                arr[before] = 1
                arr[after] = 1
            }
            before -= 1
            after += 1
        }
        if arr[n] == 1 {
            arr[n] = 0
        } else {
            arr[n] = 1
        }
    }
}

for i in 1...arr.count {
    print(arr[i-1], terminator: " ")
    if i % 20 == 0 {
        print("")
    }
}
print("")