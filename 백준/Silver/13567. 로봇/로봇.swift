import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
let m = input[0], n = input[1]

var yx = (m-1, 0)

var state = true
var direction = "right"

for _ in 0..<n {
    let str = readLine()!.split(separator: " ").map{String($0)}
    
    if str[0] == "MOVE" {
        switch direction {
        case "right":
            if 0..<m ~= Int(str[1])! + yx.1 {
                yx = (yx.0, Int(str[1])! + yx.1)
            } else {
                state = false
                break
            }
        case "left":
            if 0..<m ~= yx.1 - Int(str[1])! {
                yx = (yx.0, yx.1 - Int(str[1])!)
            } else {
                state = false
                break
            }
        case "up":
            if 0..<m ~= yx.0 - Int(str[1])! {
                yx = (yx.0 - Int(str[1])!, yx.1)
            } else {
                state = false
                break
            }
        case "down":
            if 0..<m ~= Int(str[1])! + yx.0 {
                yx = (Int(str[1])! + yx.0, yx.1)
            } else {
                state = false
                break
            }
        default:
            print("default")
        }
        
    } else {
        if str[1] == "0" {
            switch direction {
            case "right":
                direction = "up"
            case "left":
                direction = "down"
            case "up":
                direction = "left"
            case "down":
                direction = "right"
            default:
                print("default")
            }
        } else {
            switch direction {
            case "right":
                direction = "down"
            case "left":
                direction = "up"
            case "up":
                direction = "right"
            case "down":
                direction = "left"
            default:
                print("default")
            }
        }
    }
}

if state {
    print(yx.1, (m-1) - yx.0)
} else {
    print(-1)
}