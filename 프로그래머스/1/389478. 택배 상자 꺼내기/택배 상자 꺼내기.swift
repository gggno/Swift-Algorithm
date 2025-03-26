import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    // 박스 정리
    let maxRow = n / w + 1
    var boxes: [[Int]] = []
    
    for row in 0..<maxRow {
        var rowValues: [Int] = []
        for i in 1...w {
            let value = row * w + i
            rowValues.append(value <= n ? value : 0)
        }
        if row % 2 == 1 {
            rowValues.reverse()
        }
        boxes.append(rowValues)
    }
    
    // 박스 탐색
    for r in 0..<maxRow {
        for c in 0..<w {
            if boxes[r][c] != num {
                continue
            }
            
            // 박스 발견
            var res = 0
            var row = r
            
            for _ in 0..<maxRow {
                res += 1
                row += 1
                if row >= maxRow || boxes[row][c] == 0 {
                    return res
                }
            }
        }
    }
    
    return -1 // 해당하는 숫자가 없을 경우
}