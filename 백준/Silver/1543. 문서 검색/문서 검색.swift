import Foundation

let str = readLine()!.map{$0}
let target = readLine()!
var answer = 0
var index = 0

while index <= str.count - target.count {
    if String(str[index..<index+target.count]) == target {
        answer += 1
        index += target.count
        
        continue
    }
    
    index += 1
}

print(answer)