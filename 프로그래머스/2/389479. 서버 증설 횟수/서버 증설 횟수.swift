import Foundation

func solution(_ players: [Int], _ m: Int, _ k: Int) -> Int {
    var answer = 0
    var queue: [Int] = []

    for t in 0..<24 {
        // 현재 시간보다 만료된 대기 인원 제거
        while !queue.isEmpty && queue.first! <= t {
            queue.removeFirst()
        }

        let required = players[t] / m

        if required > queue.count {
            let expansion = required - queue.count
            answer += expansion

            for _ in 0..<expansion {
                queue.append(t + k)
            }
        }
    }

    return answer
}