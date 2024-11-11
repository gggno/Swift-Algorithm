let n = Int(readLine()!)!

var dic:[String:String] = [:]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    let key = input[0], value = input[1]
    
    if value == "enter" {
        dic[key] = value
    } else if value == "leave" {
        dic[key] = nil
    }
}

for i in dic.sorted{$0.key > $1.key} {
    print(i.key)
}