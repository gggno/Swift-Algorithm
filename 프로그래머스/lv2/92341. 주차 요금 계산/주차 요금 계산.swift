import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    var dic: [Int: [String]] = [:]
    var price: [Int] = []
    
    for i in 0..<records.count {
        let input = records[i].split(separator: " ").map{String($0)}
        let time = input[0], number = Int(input[1])!, io = input[2]
        
        if dic[number] == nil {
            dic[number] = [time]
        } else {
            var arr = dic[number]!
            arr.append(time)
            dic[number]! = arr
        }
    }
    
    for i in dic.sorted{$0.0 < $1.0} {
        var stackNum = 0

        if i.value.count % 2 == 0 { // 짝수
            for (index, element) in i.value.enumerated() where index % 2 != 0 {
                let c2 = i.value[index].split(separator: ":")
                let m2 = Int(c2[0])!*60 + Int(c2[1])!
                let c1 = i.value[index-1].split(separator: ":")
                let m1 = Int(c1[0])!*60 + Int(c1[1])!
                stackNum += m2-m1
            }
            
            if stackNum > fees[0] {
                var n = 0
                if ((stackNum - fees[0]) % fees[2]) == 0 {
                    n = ((stackNum - fees[0]) / fees[2])
                } else {
                    n = ((stackNum - fees[0]) / fees[2]) + 1
                }
                price.append(fees[1] + n * fees[3])
            } else {
                price.append(fees[1])
            }

        } else {
            for (index, element) in i.value.enumerated() where index % 2 != 0 {
                let c2 = i.value[index].split(separator: ":")
                let m2 = Int(c2[0])!*60 + Int(c2[1])!
                let c1 = i.value[index-1].split(separator: ":")
                let m1 = Int(c1[0])!*60 + Int(c1[1])!
                stackNum += m2-m1
            }
            
            let m2 = 23*60+59
            let c1 = i.value[i.value.count-1].split(separator: ":")
            let m1 = Int(c1[0])!*60 + Int(c1[1])!
            stackNum += m2-m1

            if stackNum > fees[0] {
                var n = 0
                if ((stackNum - fees[0]) % fees[2]) == 0 {
                    n = ((stackNum - fees[0]) / fees[2])
                } else {
                    n = ((stackNum - fees[0]) / fees[2]) + 1
                }
                price.append(fees[1] + n * fees[3])
            } else {
                price.append(fees[1])
            }
        }
    }

    return price
}