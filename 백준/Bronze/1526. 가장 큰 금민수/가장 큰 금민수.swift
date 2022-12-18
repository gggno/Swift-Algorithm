import Foundation

let n = Int(readLine()!)!

var resArr:[String] = []

for i in (4...n).reversed() {
    for j in String(i) {
        if j == "4" || j == "7" {
            resArr.append(String(j))
            continue
        } else {
            resArr.removeAll()
            break
        }
    }
    if resArr.isEmpty == false {
        break
    }
}

for i in resArr {
    print(i, terminator: "")
}
print("")
