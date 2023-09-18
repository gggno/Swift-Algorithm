func solution(_ msg:String) -> [Int] {
    var alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{String($0)}
    var message = msg.map{String($0)}
    var output: [Int] = []
    var input: String = ""
    
    while !message.isEmpty {
        input += message.removeFirst()
        
        guard let next = message.first else {
            output.append(alpha.firstIndex(of: input)! + 1)
            break
        }
        if let index = alpha.firstIndex(of: input), !alpha.contains(input + next) {
            output.append(index + 1)
            alpha.append(input + next)
            input = ""
        }
    }
    
    return output
}
