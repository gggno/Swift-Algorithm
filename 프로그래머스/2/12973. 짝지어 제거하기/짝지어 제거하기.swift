import Foundation

func solution(_ s:String) -> Int {
    var arr = Array(s)
    var stack: [String] = []
    var compare = ""
    
    for i in 0..<arr.count {
        if String(arr[i]) == compare {
            stack.removeLast()
            compare = stack.isEmpty ? "" : stack.last!
        
        } else {
            compare = String(arr[i])
            stack.append(String(arr[i]))
        }
    }
    
    return stack.isEmpty ? 1 : 0
}