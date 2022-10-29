import Foundation

let num = readLine()!.split(separator: " ")

let a = Int(num[0])!
let b = Int(num[1])!

let c = readLine()!.split(separator: " ")

var d: [Int] = []

for i in c {
    if b > Int(i)! {
        print(Int(i)!, terminator: " ")
    }
}
