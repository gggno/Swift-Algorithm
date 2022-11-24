import Foundation

var input = readLine()!

while input != "0"{
    
    var arr = input.map{String($0)}
    var res = false
    
    for i in 0...arr.count/2 {
        if arr[i] == arr[arr.count-1-i] {
            res = true
        } else {
            res = false
            break
        }
    }
    
    if res == true {
        print("yes")
    } else if res == false {
        print("no")
    }
    
    input = readLine()!
}

