import Foundation

var str: [String] = []

while 1 != 0 {
    let num = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    if num[0] == 0 && num[1] == 0 {
        break
    }
    
    if num[0] > num[1] {
        str.append("Yes")
    } else {
        str.append("No")
    }
    
}

for i in str {
    print(i)
}
