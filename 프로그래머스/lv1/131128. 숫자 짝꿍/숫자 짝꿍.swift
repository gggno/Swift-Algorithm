import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var x = Array(repeating: 0, count: 10)
    var y = Array(repeating: 0, count: 10)
    
    var arrX = X.map{Int(String($0))!}
    var arrY = Y.map{Int(String($0))!}
    
    for i in arrX {
        x[i] += 1
    }
    
    for i in arrY {
        y[i] += 1
    }
    
    var result: [String] = []
    var index = 0
    while index < 10 {
        if x[index] > 0 && y[index] > 0 {
            x[index] -= 1
            y[index] -= 1
            
            result.append(String(index))
        } else {
            index += 1
        }
    }
    
    if result.isEmpty {
        return "-1"
    }
    
    result.sort(by: >)
    
    if result[0] == "0" {
        return "0"
    } else {
        return result.joined(separator: "")
    }
    
}