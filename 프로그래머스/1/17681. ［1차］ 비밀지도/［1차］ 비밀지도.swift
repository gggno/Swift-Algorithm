func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var str1: [String] = []
    var str2: [String] = []
    var str3: [String] = []
    var result: [String] = []
    
    for i in arr1 {
        var str = String(i, radix: 2)
        var zero = ""
        
        for j in str.count..<n {
            zero += "0"
        }
        str = zero + str
        
        str1.append(str)
    }
    
    for i in arr2 {
        var str = String(i, radix: 2)
        var zero = ""
        
        for j in str.count..<n {
            zero += "0"
        }
        str = zero + str
        
        str2.append(str)
    }
    
    for i in 0..<n {
        let a1 = Array(String(str1[i]))
        let a2 = Array(String(str2[i]))
        
        var str = ""
        
        for j in 0..<n {
            if a1[j] == "1" || a2[j] == "1" {
                str += "#"
            } else {
                str += " "
            }
        }
        
        result.append(str)
    }
    
    return result
}