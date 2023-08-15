func solution(_ dartResult:String) -> Int {
    
    var num: [Int] = [0, 0, 0]
    var cnt = -1
    var pre: String = ""
    
    for i in dartResult {
        switch i {
            
            case "*":
            if cnt == 0 {
                num[cnt] *= 2
            } else {
                num[cnt-1] *= 2
                num[cnt] *= 2
            }
            
            case "#":
            num[cnt] *= -1
            
            case "0":
            if pre == "1" {
                num[cnt] += 9
            } else {
                cnt += 1
                num[cnt] = Int(String(i))!
            }
            
            case "1"..."9":
            cnt += 1
            num[cnt] = Int(String(i))!
            
            case "S":
            num[cnt] *= 1
            
            case "D":
            num[cnt] *= num[cnt]
            
            case "T":
            num[cnt] *= (num[cnt] * num[cnt])
            
            default:
            break
        }
        pre = String(i)
    }
    
    var result = 0
    for i in num {
        result += i
    }
    
    return result
}