import Foundation

var input = readLine()!.split(separator: " ")

var arr1 = Array(input[0])
var arr2 = Array(input[1])
var result = 0

for i in arr1 {
    for j in arr2 {
        result += Int(String(i))! * Int(String(j))!
    }
}
print(result)
