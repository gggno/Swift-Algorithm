import Foundation

let t = Int(readLine()!)!

for i in 0..<t {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let n = input[0] // 문서의 개수
    let m = input[1] // 몇 번째에 놓여져있는지
    
    var impor = readLine()!.split(separator: " ").map{Int($0)!}
    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: n)
    
    for j in 0..<n {
        arr[j][0] = impor[j]
        arr[j][1] = j
    }
    
    impor.sort(by: >)
    var cnt = 1
    while !arr.isEmpty {
        if arr[0][0] == impor.max()! && arr[0][1] == m {
            print(cnt)
            arr.removeAll()
            break
        } else if arr[0][0] == impor.max()! {
            impor.remove(at: 0)
            arr.remove(at: 0)
            cnt += 1
        } else {
            arr.append(arr[0])
            arr.remove(at: 0)
        }
    }
}