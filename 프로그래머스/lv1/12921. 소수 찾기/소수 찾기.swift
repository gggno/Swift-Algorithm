import Foundation

func isPrime(_ number: Int) -> Bool {
    var i = 3
    if number == 2 {
        return true
    }
    if number % 2 == 0 {
        return false
    }
    while (i * i <= number) {
        if (number % i == 0) {
            return false
        }
        i += 2
    }
    return true
}

func solution(_ n:Int) -> Int {
    var count: Int = 1 // 2는 기본적으로 들어감.
    
    for i in 2...n where i % 2 != 0 {
        if isPrime(i) == true {
            count += 1
        }
    }
    return count
}