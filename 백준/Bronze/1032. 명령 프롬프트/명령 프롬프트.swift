import Foundation

let input = Int(readLine()!)!
var res = Array(readLine()!)

if input > 1 { // 개수가 1 이상일때
    for _ in 0...input-2 {
        let str = Array(readLine()!)
        
        for j in 0...str.count-1 {
            if res[j] == str[j] { // 문자가 같을 때
                continue
                
            } else if res[j] != str[j] { // 문자가 다를 때
                res[j] = "?"
            }
        }
    }
    print(String(res))
} else { // 개수가 1 이하일때
    print(String(res))
}
