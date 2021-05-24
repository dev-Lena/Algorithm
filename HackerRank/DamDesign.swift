/*
 HackerRank
 
 * Description:
  댐을 지을 건데, wallPositions 배열에 있는 인덱스 위치에 wallHeights가 주어지고 그 사이의 값은 인접해있는 값 보다 같거나 +1 또는 -1 이다. 점점 높아지거나 점점 낮아지거나 똑같은 높이를 유지해야한다. 이 때 가장 큰 높이를 리턴하라.
 예를 들어 wallPositions = [1,3,7] / wallHeights = [4,3,3]인 경우
 [4,4,3,4,5,4,3] 이고 가장 높은 값은 5이다.
 
 아래 답변은 썩 좋은 답변은 아니라고 생각합니다. 추가 고민이 필요합니다.
 */

import Foundation

func maxHeight(wallPositions: [Int], wallHeights: [Int]) -> Int {
    var dam = Array(repeating: 0, count: wallPositions.max()!)
    let zipped = Array(zip(wallPositions, wallHeights))
    for value in zipped {
        dam[value.0 - 1] = value.1
    }
    var left = 0, right = 0
    var space = 0
    for i in 0..<dam.count {
        if i+1 < wallPositions.count {
            space = wallPositions[i+1] - wallPositions[i]
            if space <= 2 {
                dam[i+1] = max(wallHeights[i+1], wallHeights[i])
            }
            if space > 2 && i <= i + space / 2 {
                dam[i] = dam[i-1] + 1
            } else {
                dam[wallPositions[i]] = wallHeights[i+1] - 1
            }
        }
        
    }
    
    return dam.max()!
}
