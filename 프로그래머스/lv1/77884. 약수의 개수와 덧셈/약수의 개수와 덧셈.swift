import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var num: [Int] = []
    var result = 0
    var cnt = 0
    
    for i in 0..<right-left+1 { // 0~4
        for j in 1...i+left { // 1~13, 1~14 ... 1~17
            if (i+left) % j == 0 {
                cnt += 1
            }
        }
        num.append(cnt)
        cnt = 0
    }

    for i in 0..<right-left+1 {
        if num[i] % 2 == 0 {
            result += left + i
        } else {
            result -= left + i
        }
    }
    
    return result
}