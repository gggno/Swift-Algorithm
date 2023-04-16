let nAndM = readLine()!.split(separator: " ").map { Int($0)! }
let n = nAndM[0] 
let m = nAndM[1]

print(n - m > 0 ? n - m : m - n)