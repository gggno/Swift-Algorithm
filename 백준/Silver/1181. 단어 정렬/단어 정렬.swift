import Foundation

let input = Int(readLine()!)!
var strArr: Set<String> = []
var resultArr: [(Int, String)] = []

for i in 0...input-1 {
    var inputStr = readLine()!
    
    if strArr.insert(inputStr).inserted {
        resultArr.append((inputStr.count, inputStr))
    }    
}

resultArr = resultArr.sorted{ $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }

for i in resultArr {
    print(i.1)
}

