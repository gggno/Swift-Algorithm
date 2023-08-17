import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

print(abs((input[3]+input[0]) - (input[2]+input[1])))