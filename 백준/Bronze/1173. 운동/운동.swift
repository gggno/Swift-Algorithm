import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))!}

let N = input[0]
let m = input[1]
let M = input[2]
let T = input[3]
let R = input[4]

var x = m
var cnt = 0
var sportsCnt = 0

while sportsCnt < N {
    
    if m+T > M {
        cnt = -1
        break
    }
    
    if x+T <= M { // 운동
        x += T
        
        cnt += 1
        sportsCnt += 1
        
        continue
    }
    
    if x+T > M { // 휴식
        if x-R < m {
            x = m
            
            cnt += 1
            
            continue
        }
        
        x -= R
        
        cnt += 1
        continue
        
    }
    
}
print(cnt)
