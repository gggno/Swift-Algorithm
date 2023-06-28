func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var result1: [String] = []
    var result2: [String] = []
     
    var convert1: [String] = []
    var convert2: [String] = []
    
    var lastData: [String] = []
    
    for i in arr1 {
        convert1.append(String(i, radix: 2))
        var ar = Array(String(convert1.last!))

        if ar.count < n {
            for _ in 0..<n-ar.count {
                ar.insert("0", at: 0)
            }
        }
        
        result1.append(String(ar))
    }

    for i in arr2 {
        convert2.append(String(i, radix: 2))
        var ar = Array(String(convert2.last!))
        
        if ar.count < n {
            for _ in 0..<n-ar.count {
                ar.insert("0", at: 0)
            }
        }
        
        result2.append(String(ar))
    }
    
    for i in 0..<n {
        let re1 = Array(result1[i])
        let re2 = Array(result2[i])
        var last: [Character] = []
        
        for j in 0..<n {
            if re1[j] == "1" || re2[j] == "1" {
                last.append("1")
            } else {
                last.append("0")
            }
        }
        lastData.append(String(last))
    }

    for i in 0..<n {
        lastData[i] = lastData[i].replacingOccurrences(of: "1", with: "#")
        lastData[i] = lastData[i].replacingOccurrences(of: "0", with: " ")
    }
    
    return lastData
}