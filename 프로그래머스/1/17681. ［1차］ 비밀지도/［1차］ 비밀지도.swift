func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var str1: [String] = []
    var str2: [String] = []
    
    // 2진수로 변환
    for i in 0..<n {
        var s1 = String(arr1[i], radix: 2)
        var s2 = String(arr2[i], radix: 2)
        
        if s1.count != n {
            for j in 0..<n-s1.count {
                s1 = "0" + s1
            }
        }
        
        if s2.count != n {
            for j in 0..<n-s2.count {
                s2 = "0" + s2
            }
        }
        
        str1.append(s1)
        str2.append(s2)
    }
    
    var result: [String] = []
    
    // 2개의 2진수 배열을 합치기
    for i in 0..<n {
        var a1 = Array(str1[i])
        var a2 = Array(str2[i])
        var temp: String = ""
        
        for j in 0..<n {
            if a1[j] == "1" || a2[j] == "1" {
                temp += "#"
            } else {
                temp += " "
            }
        }
        
        result.append(temp)
    }
    
    
    return result
}