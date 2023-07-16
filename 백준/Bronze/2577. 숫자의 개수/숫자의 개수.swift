import Foundation

var num = 1
var dic: [Character: Int] = ["0":0, "1":0, "2":0, "3":0, "4":0, "5":0, "6":0, "7":0, "8":0, "9":0]

for i in 1...3 {
    num *= Int(readLine()!)!
}


for i in Array(String(num)) {
    dic[i]! += 1
}

let dic2 = dic.sorted{$0.0 < $1.0}

for i in dic2 {
    print(i.value)
}
