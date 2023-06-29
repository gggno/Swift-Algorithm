import Foundation

func solution(_ s:String) -> Int {
    var str = s
    
    let dic: [String: String] = [
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9",
        "zero": "0"
    ]
    
    dic.map { str = str.replacingOccurrences(of: $0.key, with: $0.value) }
    
    return Int(String(str))!
}