import Foundation

func solution(_ video_len:String, 
              _ pos:String,
              _ op_start:String, 
              _ op_end:String, 
              _ commands:[String]) -> String {
    
    func onlySec(time: String) -> Int {
        let splitTime = time.split(separator: ":")
        return (Int(String(splitTime[0]))! * 60) + Int(String(splitTime[1]))!
    }
    
    func withMin(time: Int) -> String {
        let h = time / 60 < 10 ? "0\(time / 60)" : "\(time / 60)"
        let m = time % 60 < 10 ? "0\(time % 60)" : "\(time % 60)"
        return h + ":" + m
    } 
    
    var now = onlySec(time: pos)
    let opStart = onlySec(time: op_start)
    let opEnd = onlySec(time: op_end)

    for i in commands {
        if opStart...opEnd ~= now {
            now = opEnd
        }
        
        if i == "prev" {
            now = now - 10 < 0 ? 0 : now - 10
        } else if i == "next" {
            now = now + 10 > onlySec(time: video_len) ? onlySec(time: video_len) : now + 10
        }
        
        if opStart...opEnd ~= now {
            now = opEnd
        }
    }
    
    
    
    return withMin(time: now)
}