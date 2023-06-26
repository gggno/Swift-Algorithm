func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var resultArr: [Int] = []
    
    for num in arr {
        if num % divisor == 0 {
            resultArr.append(num)
        }
    }
    
    if resultArr.count == 0 {
        resultArr.append(-1)
    } else {
        resultArr.sort()
    }
    
    return resultArr
}