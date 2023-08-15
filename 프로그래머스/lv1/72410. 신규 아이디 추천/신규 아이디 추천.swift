import Foundation

func solution(_ new_id:String) -> String {
    
    var id = new_id
    var idArr: [String] = []
    let alpha = "abcdefghijklmnopqrstuvwxyz0123456789-_."
    
    id = id.lowercased() // 1단계
    
    idArr = id.map{String($0)}
    var idCnt = idArr.count
    
    for i in 0..<idArr.count {  // 2단계
        if !alpha.contains(idArr[i]) {
            idArr[i] = ""
        }
    }
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    var pre = ""
    for i in 0..<idArr.count { // 3단계
        if i != 0 {
            pre = idArr[i-1]
        }
        if idArr[i] == "." && pre == "." {
            idArr[i-1] = ""
        }
    }
    
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    if idArr[0] == "." { // 4단계
        idArr[0] = ""
    }
    if idArr[idArr.count-1] == "." { // 4단계
        idArr[idArr.count-1] = ""
    }
    
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    if idArr.isEmpty { // 5단계
        idArr.append("a")
    }
    
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    if idArr.count >= 16 { // 6단계
        for i in 0..<idArr.count-15 {
            idArr.removeLast()
        }
        if idArr[idArr.count-1] == "." {
            idArr.removeLast()
        }
    }
    
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    if idArr.count <= 2 { // 7단계
        while idArr.count != 3 {
            idArr.append(idArr[idArr.count-1])
        }
    }
    
    id = idArr.joined(separator: "")
    idArr = id.map{String($0)}
    
    return id
}