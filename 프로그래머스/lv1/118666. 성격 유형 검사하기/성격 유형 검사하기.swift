import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var dic: [String: Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    var result = ""
    
    for i in 0..<survey.count {
        let str = survey[i].map{String($0)}
        let s1 = str[0]
        let s2 = str[1]
        
        if choices[i] - 4 == 0 {
            continue
            
        } else if choices[i] - 4 > 0 {
            dic[s2]! += choices[i] - 4
            
        } else if choices[i] - 4 < 0 {
            dic[s1]! += 4 - choices[i]
        }
    }
    
    let list = [["R", "T"], ["C", "F"], ["J", "M"], ["A", "N"]]
    
    for i in list {
        if dic[i[0]]! > dic[i[1]]! || dic[i[0]]! == dic[i[1]]! {
            result += i[0]
        } else if dic[i[0]]! < dic[i[1]]! {
            result += i[1]
        }
    }
    
    return result
}