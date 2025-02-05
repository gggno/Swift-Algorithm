import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
let k = Int(readLine()!)!

// 사과 투척
for _ in 0..<k {
    let appleXY = readLine()!.split(separator: " ").map{ Int($0)!-1 }
    arr[appleXY[0]][appleXY[1]] = 2
}

let l = Int(readLine()!)!
var move_dir: [Int: Int] = [:]

// 방향 전환
for _ in 0..<l {
    let direction = readLine()!.split(separator: " ")
    move_dir[Int(direction[0])!] = direction[1] == "D" ? 1 : 3
}

let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

var time: Int = 0
var snake: [(Int, Int)] = []

snake.append((0, 0))
arr[0][0] = 1

var x = 0
var y = 0
var d = 0

while true {
    time += 1
    
    x = x + dx[d]
    y = y + dy[d]
    
    // 벽 또는 뱀에 부딪혔을 때
    if !(0..<n ~= x && 0..<n ~= y) || arr[x][y] == 1 { break }
    
    if arr[x][y] == 0 {             // 사과가 없는 곳에 갔을 떄
        snake.append((x, y))
        arr[x][y] = 1
        
        // 앞으로 이동했으니까 꼬리부분 크기 줄이기
        let dt = snake.removeFirst()
        arr[dt.0][dt.1] = 0
        
    } else if arr[x][y] == 2 {      // 사과가 있는 곳에 갔을 때
        snake.append((x, y))
        arr[x][y] = 1
    }
    
    // 방향 전환
    for (key, value) in move_dir {
        if time == key { d = (d+value) % 4 }
    }
}

print(time)