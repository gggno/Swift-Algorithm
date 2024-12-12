import Foundation

var n = Int(readLine()!)!
var stack: [Int] = []
var result: [Int] = []

for _ in 0..<n {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    
    switch num[0] {
    case 1: // 1 X: 정수 X를 스택에 넣는다. (1 ≤ X ≤ 100,000)
        stack.append(num[1])
    case 2: // 2: 스택에 정수가 있다면 맨 위의 정수를 빼고 출력한다. 없다면 -1을 대신 출력한다.
        if !stack.isEmpty {
            result.append(stack.popLast()!)
        } else {
            result.append(-1)
        }
    case 3: // 3: 스택에 들어있는 정수의 개수를 출력한다.
        result.append(stack.count)
    case 4: // 4: 스택이 비어있으면 1, 아니면 0을 출력한다.
        if stack.isEmpty {
            result.append(1)
        } else {
            result.append(0)
        }
    case 5: // 5: 스택에 정수가 있다면 맨 위의 정수를 출력한다. 없다면 -1을 대신 출력한다.
        if !stack.isEmpty {
            result.append(stack.last!)
        } else {
            result.append(-1)
        }
    default:
        print("default")
    }
}

for i in result {
    print(i)
}