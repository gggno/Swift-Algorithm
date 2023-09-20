import Foundation

func solution(_ dirs:String) -> Int {
    
    let direction = dirs.map{ $0 }
    var dic: [String:Int] = [:]
    
    var x = 5
    var y = 5
    for i in direction {
        let x2 = x
        let y2 = y
        
        if i == "U" {
            x -= 1
        } else if i == "D" {
            x += 1
        } else if i == "L" {
            y -= 1
        } else if i == "R" {
            y += 1
        }
        
        if 0...10 ~= x && 0...10 ~= y {
            // 방문한 곳 체크
            if dic["\(x2)\(y2)->\(x)\(y)"] == nil && dic["\(x)\(y)->\(x2)\(y2)"] == nil {
                dic["\(x)\(y)->\(x2)\(y2)"] = 1
            }
           
        } else {
            if x < 0 {
                x = 0
            }
            if x > 10 {
                x = 10
            }
            if y < 0 {
                y = 0
            }
            if y > 10 {
                y = 10
            }
        }
    }
    
    return dic.count
}