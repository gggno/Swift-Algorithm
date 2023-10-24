import Foundation

func solution(_ number:String, _ k:Int) -> String {
   var arr = number.map{Int(String($0))!}
    
    var stack: [Int] = []
    var cnt = 0

    for i in 0..<arr.count {
        while stack.count > 0 && stack.last! < arr[i] && cnt < k {
            stack.removeLast()
            cnt += 1
            
            if cnt == k {
                break
            }
        }

        stack.append(arr[i])
    }

    if cnt == 0 {
        for i in 1...k {
            stack.removeLast()
        }
    }
    
    return stack.reduce(""){ $0 + "\($1)"}
}