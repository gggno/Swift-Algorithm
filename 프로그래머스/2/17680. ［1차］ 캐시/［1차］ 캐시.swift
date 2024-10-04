func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var city = cities.map{ $0.lowercased() }
    var stack: [String] = []
    
    var cnt: Int = 0
    
    if cacheSize == 0 {
        return cities.count * 5
        
    } else {
        for i in city {
            if stack.contains(i) {  // 스택에 있다면
                if stack.count >= cacheSize {
                    let index = stack.firstIndex(of: i)!
                    stack.remove(at: index)
                    stack.append(i)
                    cnt += 1
                    
                } else {
                    stack.append(i)
                    cnt += 1
                }
                
            } else {                // 스택에 없다면
                if stack.count >= cacheSize {
                    stack.removeFirst()
                    stack.append(i)
                    cnt += 5
                    
                } else {
                    stack.append(i)
                    cnt += 5
                }
            }
            
        }
    }
    
    return cnt
}