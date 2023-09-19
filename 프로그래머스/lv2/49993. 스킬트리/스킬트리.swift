import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var result = 0
    
    for s in skill_trees {
        var skill = Array(skill)
        
        for j in s {
            if skill.contains(j) {
                if let sk = skill.first {
                    if sk == j {
                        skill.removeFirst()
                    } else if sk != j {
                        result -= 1
                        break
                    }
                }
            }
        }
        
        result += 1
    }
    
    return result
}