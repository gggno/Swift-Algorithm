import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var l: [Int] = [3, 0]
    var r: [Int] = [3, 2]
    
    for i in numbers {
        if i == 1 {
            result += "L"
            l[0] = 0
            l[1] = 0
        } else if i == 4 {
            result += "L"
            l[0] = 1
            l[1] = 0
        } else if i == 7 {
            result += "L"
            l[0] = 2 
            l[1] = 0        // 왼쪽
                            
        } else if i == 3 {
            result += "R"
            r[0] = 0
            r[1] = 2
        } else if i == 6 {
            result += "R"
            r[0] = 1
            r[1] = 2
        } else if i == 9 {
            result += "R"
            r[0] = 2  
            r[1] = 2        // 오른쪽
        
        } else if i == 2 {
            let diffL = abs(0-l[0]) + abs(1-l[1])
            let diffR = abs(0-r[0]) + abs(1-r[1])

            if diffL < diffR {
                result += "L"
                l[0] = 0
                l[1] = 1
            } else if diffL > diffR {
                result += "R"
                r[0] = 0
                r[1] = 1
            } else if diffL == diffR {
                if hand == "left" {
                    result += "L"
                    l[0] = 0
                    l[1] = 1
                } else {
                    result += "R"
                    r[0] = 0
                    r[1] = 1
                }
            } 
        } else if i == 5 {
            let diffL = abs(1-l[0]) + abs(1-l[1])
            let diffR = abs(1-r[0]) + abs(1-r[1])

            if diffL < diffR {
                result += "L"
                l[0] = 1
                l[1] = 1
            } else if diffL > diffR {
                result += "R"
                r[0] = 1
                r[1] = 1
            } else if diffL == diffR {
                if hand == "left" {
                    result += "L"
                    l[0] = 1
                    l[1] = 1
                } else {
                    result += "R"
                    r[0] = 1
                    r[1] = 1
                }
            } 
        } else if i == 8 {
            let diffL = abs(2-l[0]) + abs(1-l[1])
            let diffR = abs(2-r[0]) + abs(1-r[1])

            if diffL < diffR {
                result += "L"
                l[0] = 2
                l[1] = 1
            } else if diffL > diffR {
                result += "R"
                r[0] = 2
                r[1] = 1
            } else if diffL == diffR {
                if hand == "left" {
                    result += "L"
                    l[0] = 2
                    l[1] = 1
                } else {
                    result += "R"
                    r[0] = 2
                    r[1] = 1
                }
            } 
        } else if i == 0 {
            let diffL = abs(3-l[0]) + abs(1-l[1])
            let diffR = abs(3-r[0]) + abs(1-r[1])

            if diffL < diffR {
                result += "L"
                l[0] = 3
                l[1] = 1
            } else if diffL > diffR {
                result += "R"
                r[0] = 3
                r[1] = 1
            } else if diffL == diffR {
                if hand == "left" {
                    result += "L"
                    l[0] = 3
                    l[1] = 1
                } else {
                    result += "R"
                    r[0] = 3
                    r[1] = 1
                }
            } 
        }
    }
    
    
    return result
}