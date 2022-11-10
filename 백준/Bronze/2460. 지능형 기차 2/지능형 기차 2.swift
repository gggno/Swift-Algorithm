import Foundation

var numberPeopleArr: [Int] = []
numberPeopleArr.append(0)

for i in 0...9 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    numberPeopleArr.append(numberPeopleArr[i] + (input[1] - input[0]))
}
print(numberPeopleArr.max()!)
