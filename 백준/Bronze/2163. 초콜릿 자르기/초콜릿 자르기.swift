import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

if input[0] == 1 && input[1] == 1 {
    print(0)
} else {
    if input[0] == input[1] {
        print(input[0] * input[1] - 1)
        
    } else if input[0] > input[1] {
        if input[1] == 1 {
            print(input[0]-1)
        } else {
            print(input[0] * input[1] - 1)
        }
    } else if input[0] < input[1] {
        if input[0] == 1 {
            print(input[1]-1)
        } else {
            print(input[1] * input[0] - 1)
        }
    }
}
