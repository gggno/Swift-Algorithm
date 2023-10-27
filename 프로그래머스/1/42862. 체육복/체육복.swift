import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 1, count: n+1)
    
    for i in lost {
        arr[i] -= 1
    }
    
    for i in reserve {
        arr[i] += 1
    }
    
    for i in 1...n {
        if arr[i] == 0 {
            if i == 1 {
                if arr[i+1] == 2 {
                    arr[i] += 1
                    arr[i+1] -= 1
                }
            } else if i == n {
                if arr[i-1] == 2 {
                    arr[i] += 1
                    arr[i-1] -= 1
                }
            } else {
                if arr[i-1] == 2 {
                    arr[i] += 1
                    arr[i-1] -= 1
                } else if arr[i+1] == 2 {
                    arr[i] += 1
                    arr[i+1] -= 1
                }
            }
        }
    }
    
    var cnt = 0
    for i in 1...n {
        if arr[i] >= 1 {
            cnt += 1
        }
    }

    return cnt
}