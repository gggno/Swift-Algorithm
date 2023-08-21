import Foundation

func solution(_ s:String) -> Int {
    
    var str = s
    var firstStr = str.first!
    var result = 0
    
    for i in 0..<str.count {
        var stack: [Character] = []
        
        for j in str {
            if j == "[" || j == "{" || j == "(" {
                stack.append(j)
                
            } else if j == "]" && stack.last == "[" {
                stack.removeLast()
                
            } else if j == "}" && stack.last == "{" {
                stack.removeLast()
                
            } else if j == ")" && stack.last == "(" {
                stack.removeLast()
            } else {
                result -= 1
                break
            }
        }
        if !stack.isEmpty {
            result -= 1
        }
        result += 1
        
        var arr = Array(str)
        
        for j in 1..<arr.count {
            arr[j-1] = arr[j]
        }
        arr[arr.count-1] = firstStr
        str = String(arr)
        firstStr = str.first!
    }
    
    if result < 0 {
        result = 0
    }
    
    return result
}