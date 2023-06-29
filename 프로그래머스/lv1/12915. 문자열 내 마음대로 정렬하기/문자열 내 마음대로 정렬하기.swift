func solution(_ strings:[String], _ n:Int) -> [String] {
    var result: [String] = []
    var compare: [[String]] = Array(repeating: Array(repeating: "0", count: 2), count: strings.count)

    var str = strings.sorted()
    
    for i in 0..<str.count {
        var cnt = 0
        compare[i][0] = str[i]
        for j in str[i] {
            if cnt == n {
                compare[i][1] = String(j)
            }
            cnt += 1
        }
    }
    let final = compare.sorted(by: {$0[1] < $1[1]})
    print(final)
    for i in 0..<final.count {
        result.append(final[i][0])
    }
    
    return result
}