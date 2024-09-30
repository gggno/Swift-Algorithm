import Foundation

func solution(_ new_id:String) -> String {
    
    let filter = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "-", "_", ".", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    
    var id = Array(new_id.lowercased())
    var filterId: String = ""
    
    // 2단계
    for i in 0..<id.count {
        if filter.contains(String(id[i])) {
            filterId += String(id[i])
        }
    }

    // 3단계
    while filterId.contains("..") {
        filterId = filterId.replacingOccurrences(of: "..", with: ".")
    }

    // 4단계
    while filterId.first == "." {
        filterId.removeFirst()
    }
    while filterId.last == "." {
        filterId.removeLast()
    }

    // 5단계
    if filterId == "" {
        filterId = "a"
    }

    // 6단계
    if filterId.count >= 16 {
        while filterId.count >= 16 {
            filterId.removeLast()
        }
        
        while filterId.last == "." {
            filterId.removeLast()
        }
    }

    // 7단계
    if filterId.count <= 2 {
        while filterId.count < 3 {
            filterId += String(filterId.last!)
        }

    }

    return filterId
}