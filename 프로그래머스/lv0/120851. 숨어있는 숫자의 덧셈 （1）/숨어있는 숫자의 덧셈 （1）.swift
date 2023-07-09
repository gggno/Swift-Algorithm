import Foundation

func solution(_ my_string:String) -> Int {
    var num = 0
    for c in my_string {
        if let cc = Int(String(c)) {
            num += cc
        } else {
            continue
        }
    }
    return num
}