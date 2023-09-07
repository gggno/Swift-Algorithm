import Foundation

while let input = readLine() {
    var str = Array(input)
    var small = 0
    var big = 0
    var num = 0
    var space = 0
    
    for c in str {
        if "a"..."z" ~= c {
            small += 1
        } else if "A"..."Z" ~= c {
            big += 1
        } else if c == " " {
            space += 1
        } else {
            num += 1
        }
    }
    print("\(small) \(big) \(num) \(space)")
}