import Foundation

let input = Int(readLine()!)!

var room: [Int] = []

for i in 0...input-1 {
    let num = readLine()!.split(separator: " ")
    let H = Int(num[0])!
    let W = Int(num[1])!
    let N = Int(num[2])!
    
    if N%H == 0 {
        room.append((100 * H) + ((N/H)))
    } else {
        room.append((100 * (N%H)) + ((N/H)+1))
    }
}

for i in room {
    print(i)
}
