import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = 0
    var even = 0
    var oddCnt = 10
    var evenCnt = 10
    
    for num in num_list {
        if num % 2 != 0 {
            if odd > 0 {
                odd *= oddCnt
            }
            odd += num
        } else {
            if even > 0 {
                even *= evenCnt
            }
            even += num
        }
    }
    return odd + even
}