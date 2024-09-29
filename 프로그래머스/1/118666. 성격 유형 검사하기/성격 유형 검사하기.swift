import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var dic: [Character: Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    var result = ""
    
    for i in 0..<survey.count {
        if choices[i] < 4 {
            dic[Array(survey[i])[0]]! += 4 - choices[i]
        
        } else if choices[i] > 4 {
            dic[Array(survey[i])[1]]! += choices[i] - 4
        }
    }
    
    result += dic["R"]! >= dic["T"]! ? "R" : "T"
    result += dic["C"]! >= dic["F"]! ? "C" : "F"
    result += dic["J"]! >= dic["M"]! ? "J" : "M"
    result += dic["A"]! >= dic["N"]! ? "A" : "N"
    
    return result
}