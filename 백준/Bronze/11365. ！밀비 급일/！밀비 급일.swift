import Foundation

var result: [String] = []

while true {
    let input = readLine()!.reversed()
    
    if String(input) == "DNE" {
        break
    }
    
    result.append(String(input))
}

for i in result {
    print(i)
}