import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    
    var x1 = 0, y1 = 0, x2 = 0, y2 = 0
    
    for i in 0..<wallpaper.count {
        if wallpaper[i].contains("#") {
            y1 = i
            break
        }
    }
    
    var min = Int.max
    for i in 0..<wallpaper.count {
        var cnt = 0
        for j in wallpaper[i] {
            if j == "#" {
                if cnt < min {
                    min = cnt
                    break
                }
            }
            cnt += 1
        }
    }
    x1 = min
    
    for i in (0..<wallpaper.count).reversed() {
        if wallpaper[i].contains("#") {
            y2 = i + 1
            break
        }
    }
    
    var min2 = Int.min
    for i in 0..<wallpaper.count {
        var cnt = wallpaper[0].count
        for j in (wallpaper[i]).reversed() {
            if j == "#" {
                if cnt > min2 {
                    min2 = cnt
                    break
                }
            }
            cnt -= 1
        }
    }
    x2 = min2
    
    return [y1, x1, y2, x2]
}