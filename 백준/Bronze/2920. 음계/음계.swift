import Foundation

let input = readLine()!

if input == "1 2 3 4 5 6 7 8" {
    print("ascending")
} else if input == "8 7 6 5 4 3 2 1" {
    print("descending")
} else {
    print("mixed")
}
