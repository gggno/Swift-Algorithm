import Foundation

func solution(_ t:String, _ p:String) -> Int {
// p의 길이를 저장
    let len = p.count
    // 뽑은 숫자가 p보다 작거나 같으면 1씩 늘려서 카운팅하기 위해
    var answer = 0
    
    // for문으로 모든 경우의 수 확인
    // 주의!!!! -len + 1을 하여 t의 인덱스를 넘어가지 않게 방지
    for i in 0..<t.count-len+1 {
    	// 검색하여 공부한 결과 swift는 이런식으로
        // string 인덱스를 설정하여 뽑아올 수 있다
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(t.startIndex, offsetBy: i+len-1)
        let range = startIndex...endIndex
        
        // 문제에서 최대길이가 10000자리의 숫자기 때문에 Int64로 설정을 해주었다
        // 안해주면 런타임 오류!!
        if Int64(t[range])! <= Int64(p)! {
            answer += 1
        }
    }
    return answer
}