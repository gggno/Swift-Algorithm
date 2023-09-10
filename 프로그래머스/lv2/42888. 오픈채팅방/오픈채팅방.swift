import Foundation

func solution(_ record:[String]) -> [String] {
    
    var dic: [String: String] = [:]
    
    for i in record {
        let str = i.split(separator: " ").map{String($0)}
        
        if str[0] != "Leave" {
            let uid = String(str[1])
            let name = String(str[2])
            dic[uid] = name
        }
    }
    
    var result: [String] = []
    
    for i in record {
        let str = i.split(separator: " ").map{String($0)}
        
        if str[0] == "Enter" {
            result.append("\(dic[str[1]]!)님이 들어왔습니다.")
        } else if str[0] == "Leave" {
            result.append("\(dic[str[1]]!)님이 나갔습니다.")
        }
    }
    
    return result
}