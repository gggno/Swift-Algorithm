func solution(_ s:String) -> String {
   
    var arr: [Int] = []
    
    for i in s.split(separator: " ").map{Int(String($0))!} {
        arr.append(i)
    }

    return "\(arr.min()!) \(arr.max()!)"
}