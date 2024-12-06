import Foundation

func solution(_ record:[String]) -> [String] {
    
    var dic: [String:String] = [:]
    
    for i in record {
        let str = i.split(separator: " ").map{String($0)}
        
        switch str[0] {
            case "Enter":
            if dic[str[1]] == nil {
                dic[str[1]] = str[2]
            } else {
                dic[str[1]]! = str[2]
            }
            
            case "Change":
            dic[str[1]]! = str[2]
            
            default:
            continue
        }    
    }
    
    var result: [String] = []
    
    for i in record {
        let str = i.split(separator: " ").map{String($0)}
        
        switch str[0] {
            case "Enter":
            result.append("\(dic[str[1]]!)님이 들어왔습니다.")
            case "Leave":
            result.append("\(dic[str[1]]!)님이 나갔습니다.")
            
            default:
            continue
        }
        
    }
    
    return result
}