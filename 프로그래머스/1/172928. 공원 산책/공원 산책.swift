import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
    var yx = [0, 0]
    var graph: [[String]] = []
    
    for i in park {
        graph.append(i.map{String($0)})
    }
    
    var state = false
    for i in 0..<graph.count {
        for j in 0..<graph[i].count {
            if graph[i][j] == "S" {
                yx = [i, j]
                state = true
                break
            }
        }
        if state {
            break
        }
    }
    
    for i in routes {
        let go = i.split(separator: " ")
        
        switch go[0] {
            case "E": // 동쪽
            var state = true
            if yx[1] + Int(go[1])! < graph[0].count {
                for j in 1...Int(go[1])! {
                    if graph[yx[0]][yx[1]+j] == "X" {
                        state = false
                        break
                    }
                }
                if state {
                    yx[1] += Int(go[1])!
                }
            }

            case "W": // 서쪽
            var state2 = true
            if yx[1] - Int(go[1])! >= 0 {
                for j in 1...Int(go[1])! {
                    if graph[yx[0]][yx[1]-j] == "X" {
                        state2 = false
                        break
                    }
                }
                if state2 {
                    yx[1] -= Int(go[1])!
                }
            }

            case "N": // 북쪽
            var state3 = true
            if yx[0] - Int(go[1])! >= 0 {
                for j in 1...Int(go[1])! {
                    if graph[yx[0]-j][yx[1]] == "X" {
                        state3 = false
                        break
                    }
                }
                if state3 {
                    yx[0] -= Int(go[1])!
                }
            }
            
            case "S": // 남쪽
            var state4 = true
            if yx[0] + Int(go[1])! < graph.count {
                for j in 1...Int(go[1])! {
                    if graph[yx[0]+j][yx[1]] == "X" {
                        state4 = false
                        break
                    }
                }
                if state4 {
                    yx[0] += Int(go[1])!
                }
            }
            
            default:
            print("default")
        } 
    }
    
    return yx
}