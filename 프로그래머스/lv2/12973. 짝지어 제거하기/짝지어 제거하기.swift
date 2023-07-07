import Foundation

func solution(_ s:String) -> Int {
    var arr = Array(s)
    var compare = ""
    var result: [String] = []
    
    for i in 0..<arr.count {
        if String(arr[i]) == compare {
            result.removeLast()
            compare = result.count > 0 ? result.last! : ""
        } else {
            compare = String(arr[i])
            result.append(String(arr[i]))
        }
    }
    return result.isEmpty ? 1 : 0
}