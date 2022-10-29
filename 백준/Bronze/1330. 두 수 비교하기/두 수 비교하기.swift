import Foundation

let data = readLine()!
let dataArr = data.split(separator: " ")

let a = Int(dataArr[0])!
let b = Int(dataArr[1])!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
