import Foundation

let input1 = readLine()!.split(separator: " ").map{Int($0)!}
let top1 = input1[0]
let bottom1 = input1[1]

let input2 = readLine()!.split(separator: " ").map{Int($0)!}
let top2 = input2[0]
let bottom2 = input2[1]

var bottom = bottom1 * bottom2
var top = (top1 * (bottom / bottom1)) + (top2 * (bottom / bottom2))

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let div = gcd(top, bottom)

print(top / div, bottom / div)