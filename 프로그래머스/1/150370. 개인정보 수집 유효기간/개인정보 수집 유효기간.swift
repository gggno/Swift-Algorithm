import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = today.split(separator: ".").map{Int($0)!}
    var dic: [String: String] = [:]
    var result: [Int] = []
    
    for i in 0..<terms.count {
        let t = terms[i].split(separator: " ")
        dic[String(t[0])] = String(t[1])
    }
    
    for i in 0..<privacies.count {
        let splitArr = privacies[i].split(separator: " ")
        let alpha = String(splitArr[1])
        let pri = splitArr[0].split(separator: ".")
        
        var year = Int(pri[0])!, month = Int(pri[1])!, day = Int(pri[2])!
        
        if day - 1 == 0 {
            day = 28
            if month - 1 == 0 {
                month = 12
                year -= 1
            } else {
                month -= 1
            }
        } else {
            day -= 1
        }
        
        year += (Int(dic[alpha]!)! + month) / 12
        month = (Int(dic[alpha]!)! + month) % 12
        
        if month == 0 {
            year -= 1
            month = 12
        }
        
        if today[0] >= year {
            if today[0] == year {
                
                if today[1] >= month {
                    if today[1] == month {
                        if today[2] >= day {
                            if today[2] == day {
                                continue
                            } else {
                                result.append(i+1)
                                continue
                            }
                        }
                    } else {
                        result.append(i+1)
                        continue
                    }
                }
                
            } else {
                result.append(i+1)
                continue
            }
        }
    }
    
    return result
}