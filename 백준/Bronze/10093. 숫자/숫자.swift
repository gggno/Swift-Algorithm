import Foundation

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int64($0)! }
let A = input[0]
let B = input[1]

if B >= A {
    if A == B {
        print(0)
    } else {
        print(B - A - 1)
        for i in (A + 1)..<B {
            print(i, terminator: " ")
        }
    }
} else { // A > B
    print(A - B - 1)
    for i in (B + 1)..<A {
        print(i, terminator: " ")
    }
}