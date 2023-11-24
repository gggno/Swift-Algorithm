import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var result = ""
    var dic: [String: Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    
    for i in 0..<survey.count {
        let s = Array(survey[i].map{String($0)})
        
        switch choices[i] {
            case 1:
            dic[s[0]]! += 3
            case 2:
            dic[s[0]]! += 2
            case 3:
            dic[s[0]]! += 1
            case 5:
            dic[s[1]]! += 1
            case 6:
            dic[s[1]]! += 2
            case 7:
            dic[s[1]]! += 3
            default:
            print("end")
        }
    }
    
    if dic["R"]! >= dic["T"]! {
        result += "R"
    } else {
        result += "T"
    }
    
    if dic["C"]! >= dic["F"]! {
        result += "C"
    } else {
        result += "F"
    }
    
    if dic["J"]! >= dic["M"]! {
        result += "J"
    } else {
        result += "M"
    }
    
    if dic["A"]! >= dic["N"]! {
        result += "A"
    } else {
        result += "N"
    }
    
    return result
}