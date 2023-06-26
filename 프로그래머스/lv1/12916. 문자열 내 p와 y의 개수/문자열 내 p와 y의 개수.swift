import Foundation

func solution(_ s:String) -> Bool
{
    var pCnt = 0
    var yCnt = 0
    for cha in s.uppercased() {
        if cha == "P" {
            pCnt += 1
        } else if cha == "Y" {
            yCnt += 1
        }
    }

    return pCnt == yCnt ? true : false
}