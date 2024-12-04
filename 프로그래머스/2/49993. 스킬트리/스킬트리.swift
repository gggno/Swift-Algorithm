import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var result = 0
    
    for s in skill_trees {
        var skill = Array(skill)
        
        for j in s {
            if skill.contains(j) {
                if let first = skill.first {
                    if j == first {
                        skill.removeFirst()

                    } else if j != first {
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