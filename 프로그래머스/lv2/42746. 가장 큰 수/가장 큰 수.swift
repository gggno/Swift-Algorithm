import Foundation

func solution(_ numbers:[Int]) -> String {
   let sorted = numbers.sorted{
        return Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    if sorted[0] == 0 {
        return "0"
    }
    
    return sorted.reduce(""){$0+"\($1)"}
}