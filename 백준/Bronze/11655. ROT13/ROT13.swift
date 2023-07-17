import Foundation

let s = readLine()!
var result = ""
for i in s {
    var rot = i.asciiValue!
    if rot >= 65 && rot <= 90 { // 소문자
        rot += 13
        if rot > 90 {
            rot -= 26
        }
    } else if rot >= 97 && rot <= 122 {
        rot += 13
        if rot > 122 {
            rot -= 26
        }
    }
    result += "\(UnicodeScalar(rot))"
}
print(result)
