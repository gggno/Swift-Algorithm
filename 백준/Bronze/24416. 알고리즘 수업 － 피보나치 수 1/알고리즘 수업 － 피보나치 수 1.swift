import Foundation

let num = Int(readLine()!)!

func fibo1(n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return fibo1(n: n-1) + fibo1(n: n-2)
    }
}

func fibo2(n: Int) -> Int {
    var f = [0,1,1]
    var cnt = 0
    for i in 3...n {
        cnt += 1
        f.append(f[i-1]+f[i-2])
    }
    return cnt
}

print(fibo1(n: num), fibo2(n: num))


