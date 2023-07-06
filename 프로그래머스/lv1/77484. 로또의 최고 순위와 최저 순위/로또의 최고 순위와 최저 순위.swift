import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCnt = lottos.filter {$0 == 0}.count
    var sameCnt = lottos.filter {win_nums.contains($0)}.count
    var min = sameCnt > 0 ? 7 - sameCnt : 6
    var max = (sameCnt + zeroCnt) > 0 ? 7 - (sameCnt + zeroCnt): 6
    
    return [max, min]
}