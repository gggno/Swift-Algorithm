import Foundation

var n = Int(readLine()!)!
var milkList: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}

var now = 0
var cnt = 0

for i in 0..<milkList.count {
    if milkList[i] == 0 {
        cnt += 1
        break
    } else {
        milkList[i] = -1
    }
}

for i in 1..<milkList.count {
    if now == 0 {
        if milkList[i] == 1 {   // 규칙대로 마시는 경우
            now = 1
            cnt += 1
        }
        
    } else if now == 1 {
        if milkList[i] == 2 {   // 규칙대로 마시는 경우
            now = 2
            cnt += 1
        }
        
    } else if now == 2 {
        if milkList[i] == 0 {   // 규칙대로 마시는 경우
            now = 0
            cnt += 1
        }
    }
}

print(cnt)