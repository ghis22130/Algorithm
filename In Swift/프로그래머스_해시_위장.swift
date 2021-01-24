import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var kindClothes : [String:Int] = [:]
    var answer = 1
    clothes.forEach { item in
        if kindClothes.keys.contains(item[1]) {
            kindClothes[item[1]]! += 1
        } else {
            kindClothes[item[1]] = 1
        }
    }
    
    kindClothes.forEach { (key, value) in
        answer *= (value+1)
    }
    return answer - 1
}