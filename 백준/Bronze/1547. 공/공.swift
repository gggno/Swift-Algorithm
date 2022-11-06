import Foundation

let input = Int(readLine()!)!

var ball = 1

for i in 0...input-1 {
    let num = readLine()?.split(separator: " ")
    
    if i == 0 { // 처음에 공이 들어있는 첫번째 컵을 이동했을 시
        if Int(num![0])! == 1 {
            ball = Int(num![1])!
            
        } else if Int(num![1])! == 1 {
            ball = Int(num![0])!
        }
        continue
    }
    
    if Int(num![0])! == ball {
        ball = Int(num![1])!
        
    } else if Int(num![1])! == ball {
        ball = Int(num![0])!
    }
}
print(ball)
