import Foundation

let input = Int(readLine()!)!
var resultArr: [String] = []

for _ in 0...input-1 {
    let testCase = readLine()!.split(separator: " ")
    
    let T1 = Double(testCase[0])!
    let T2 = String(testCase[1])
    let digit: Double = pow(10, 4)
    
    if T2 == "kg" {
        let num = round((T1 * 2.2046) * digit) / digit
        resultArr.append("\(String(format: "%.4f", num)) lb")
        
    } else if T2 == "l" {
        let num = round((T1 * 0.2642) * digit) / digit
        resultArr.append("\(String(format: "%.4f", num)) g")
        
    } else if T2 == "lb" {
        let num = round((T1 * 0.4536) * digit) / digit
        resultArr.append("\(String(format: "%.4f", num)) kg")
        
    } else if T2 == "g" {
        let num = round((T1 * 3.7854) * digit) / digit
        resultArr.append("\(String(format: "%.4f", num)) l")
    }
    
}

for i in resultArr {
    print(i)
}
