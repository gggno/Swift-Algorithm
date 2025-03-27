import Foundation

import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    var arr: [[Int]] = []
    var result = 0
    
    let line = (n + w - 1) / w // 올바른 행 개수 계산
    var cnt = 1
    
    for i in 0..<line {
        var lineArr: [Int] = []
        
        for _ in 0..<w {
            lineArr.append(cnt <= n ? cnt : 0)
            cnt += 1
        }
        
        if i % 2 == 1 { lineArr.reverse() } // 0-based index 기준 홀수 행 뒤집기
        
        arr.append(lineArr)
    }
    
    for i in arr {
        print(i)
    }
    
    for i in 0..<line {
        for j in 0..<w {
            if arr[i][j] == num {
                var res = 0
                var k = i
                
                while k < line {
                    if arr[k][j] == 0 {
                        return res
                    }
                    res += 1
                    k += 1
                }
                return res
            }
        }
    }
    
    return -1 // num을 찾지 못한 경우
}
