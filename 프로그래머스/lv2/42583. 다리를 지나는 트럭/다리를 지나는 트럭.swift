import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var time = 0
    var truck = truck_weights
    var bridge: [Int] = Array(repeating: 0, count: bridge_length)
    var bridgeWeight = 0
    
    while !bridge.isEmpty {
        time += 1
        bridgeWeight -= bridge.removeFirst()
        
        if let t = truck.first {
            if t + bridgeWeight <= weight {
                bridgeWeight += truck.removeFirst()
                bridge.append(t)
                
            } else {
                bridge.append(0)
            }
        }   
    }
    
    return time
}