import Foundation

func solution(_ book_time:[[String]]) -> Int {
    
    var time: [[Int]] = []
    var result = 1
    
    for i in book_time {
        var temp: [Int] = []
        for j in 0...1 {
            let data = i[j].split(separator: ":").map{Int($0)!}
            if j == 0 {
                temp.append(data[0]*60 + data[1])
            } else if j == 1 {
                temp.append(data[0]*60 + data[1] + 10)
            }
        }
        time.append(temp)
    }
    
    time = time.sorted{$0[0] < $1[0]}
    var room: [[Int]] = [time[0]]
    
    for i in 1..<book_time.count {
        var state = false
        for j in 0..<room.count {
            if !(room[j][0]..<room[j][1] ~= time[i][0]) && !(room[j][0]..<room[j][1] ~= time[i][1]) {
                room[j] = time[i]
                state = true
                break
            }
        }
        if state {
            continue
        } else {
            room.append(time[i])
            result += 1
        }
    }
    
    return result
}