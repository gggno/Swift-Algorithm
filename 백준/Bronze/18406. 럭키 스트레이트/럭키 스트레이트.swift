import Foundation

let n = readLine()!.map{String($0)}

var c1 = 0
for i in 0..<n.count/2 {
    c1 += Int(n[i])!
}

var c2 = 0
for i in n.count/2..<n.count {
    c2 += Int(n[i])!
}

if c1 == c2 {
    print("LUCKY")
} else {
    print("READY")
}