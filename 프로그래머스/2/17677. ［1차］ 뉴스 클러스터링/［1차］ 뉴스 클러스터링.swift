func solution(_ str1:String, _ str2:String) -> Int {
    let string1 = Array(str1.uppercased())
    let string2 = Array(str2.uppercased())
    
    var s1: [String] = []
    var s2: [String] = []
    
    for i in 0..<string1.count-1 {
        if string1[i].isLetter && string1[i+1].isLetter {
            s1.append("\(string1[i])\(string1[i+1])")
        }
    }
        
    for i in 0..<string2.count-1 {
        if string2[i].isLetter && string2[i+1].isLetter {
            s2.append("\(string2[i])\(string2[i+1])")
        }
    }
    
    var allCnt = s1.count + s2.count
    var myCnt = 0
    
    for i in s1.indices {
        for j in s2.indices {
            if s1[i] == s2[j] {
                myCnt += 1
                s2.remove(at: j)
                break
            }
        }
    }
    
    allCnt -= myCnt
    
    if allCnt == 0 {
        return 65536
    } else if myCnt == 0 {
        return 0
    } else {
        return Int(Double(myCnt) / Double(allCnt) * 65536)
    }
    
}