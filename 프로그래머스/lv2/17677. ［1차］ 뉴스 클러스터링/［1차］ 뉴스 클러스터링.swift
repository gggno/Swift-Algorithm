func solution(_ str1:String, _ str2:String) -> Int {
    var sa1 = Array(str1)
    var sa2 = Array(str2)
    
    var a1: [String] = []
    var a2: [String] = []
    
    for i in 0..<sa1.count-1 {
        if sa1[i].isLetter && sa1[i+1].isLetter {
            a1.append("\(sa1[i].uppercased())\(sa1[i+1].uppercased())")
        }
    }
    
    for i in 0..<sa2.count-1 {
        if sa2[i].isLetter && sa2[i+1].isLetter {
            a2.append("\(sa2[i].uppercased())\(sa2[i+1].uppercased())")
        }
    }
    
    var allCnt = a1.count + a2.count
    var myCnt = 0
    
    for i in a1.indices {
        for j in a2.indices {
            if a1[i] == a2[j] {
                myCnt += 1
                a2.remove(at: j)
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