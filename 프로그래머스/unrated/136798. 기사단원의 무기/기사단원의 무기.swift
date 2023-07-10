import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result: Int = 0

    for num in 1...number {
        let powerOfNum: Int = getPower(of: num)
        
        if powerOfNum > limit {
            result += power
        } else {
            result += powerOfNum
        }
    }
    
    return result
}

func getPower(of num: Int) -> Int {
    var power: Int = 0
    
    if num == 1 {
        power = 1
    } else if num == 2 {
        power = 2
    } else if num == 3 {
        power = 2
    } else {
        for i in 1...Int(sqrt(Double(num))) {
            if num % i == 0 {
                if (i * i) == num {
                    power += 1
                } else {
                    power += 2
                }
            }
        }
    }
    
    return power
}