import Foundation

let n = Int(readLine()!)!

var arr: [[String]] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}

let arr2 = arr.sorted{Int($0[1])! < Int($1[1])!}.sorted{Int($0[2])! < Int($1[2])!}.sorted{Int($0[3])! < Int($1[3])!}

print(arr2[n-1][0])
print(arr2[0][0])