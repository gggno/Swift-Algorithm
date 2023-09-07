func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var city = cities.map{$0.lowercased()}
    var queue: [String] = []
    var time = 0
    
    if cacheSize == 0 {
        return city.count * 5
    }
    
    for i in city {
        if queue.count < cacheSize { // 캐시에 공간이 있을 때
            if !queue.contains(i) {     // 일치하는 도시가 없을 때(miss)
                queue.append(i)
                time += 5
                
            } else if queue.contains(i) { // 일치하는 도시가 있을 때(hit)
                let index = queue.firstIndex(of: i)!
                queue.remove(at: index)
                queue.append(i)
                time += 1
                
            }
            
        } else if queue.count == cacheSize { // 캐시에 공간이 없을 때
            if !queue.contains(i) {         // 일치하는 도시가 없을 때(miss)
                queue.removeFirst()
                queue.append(i)
                time += 5
                
            } else if queue.contains(i) {   // 일치하는 도시가 있을 때(hit)
                let index = queue.firstIndex(of: i)!
                queue.remove(at: index)
                queue.append(i)
                time += 1
            }
        }
        
    }
    
    return time
}