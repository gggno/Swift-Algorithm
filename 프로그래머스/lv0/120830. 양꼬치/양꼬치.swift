import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    // 음류수 서비스
    var service = (n / 10) * 2000
    
    return (n * 12000) + (k * 2000) - service
}