import Foundation

var s = readLine()!.map{String($0)}
var dic: [String:String] = [
    "D": "A",
    "E": "B",
    "F": "C",
    "G": "D",
    "H": "E",
    "I": "F",
    "J": "G",
    "K": "H",
    "L": "I",
    "M": "J",
    "N": "K",
    "O": "L",
    "P": "M",
    "Q": "N",
    "R": "O",
    "S": "P",
    "T": "Q",
    "U": "R",
    "V": "S",
    "W": "T",
    "X": "U",
    "Y": "V",
    "Z": "W",
    "A": "X",
    "B": "Y",
    "C": "Z",
]
var result = ""

for i in s {
    result += dic[String(i)]!
}
print(result)