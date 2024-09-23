import Foundation

func solution(_ s:String) -> Int {
    
    var ss = s
    
    ss = ss.replacingOccurrences(of: "zero", with: "0")
    ss = ss.replacingOccurrences(of: "one", with: "1")
    ss = ss.replacingOccurrences(of: "two", with: "2")
    ss = ss.replacingOccurrences(of: "three", with: "3")
    ss = ss.replacingOccurrences(of: "four", with: "4")
    ss = ss.replacingOccurrences(of: "five", with: "5")
    ss = ss.replacingOccurrences(of: "six", with: "6")
    ss = ss.replacingOccurrences(of: "seven", with: "7")
    ss = ss.replacingOccurrences(of: "eight", with: "8")
    ss = ss.replacingOccurrences(of: "nine", with: "9")
    
    return Int(ss)!
}