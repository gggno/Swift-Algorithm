import Foundation

let numberStudents = Int(readLine()!)!

var student = Array(repeating: Array(repeating: 0, count: 5), count: numberStudents)
var cnt = Array(repeating: 0, count: numberStudents)

for i in 0..<numberStudents {
    let grade = readLine()!.split(separator: " ").map{Int(String($0))!}

    for j in 0..<5 {
        student[i][j] = grade[j]
    }
}

for i in 0..<numberStudents {
    for j in 0..<numberStudents {
        for k in 0..<5 {
        
            if student[i][k] == student[j][k] {
                cnt[i] += 1
                break
            }
            
        }
    }
}

var max = 0
var maxStudent = 0

for i in 0..<numberStudents {
    if cnt[i] > max {
        max = cnt[i]
        maxStudent = i
    } else if cnt[i] == max {
        if maxStudent > i {
            maxStudent = i
        }
    }
}

print(maxStudent+1)
