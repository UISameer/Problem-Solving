import Foundation

class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        let numbers = s.split(separator: " ").compactMap { Int($0) }
        return zip(numbers, numbers.dropFirst()).allSatisfy { $0 < $1 }
    }
}

//func areNumbersAscending(_ s: String) -> Bool {
//    s.split(separator: " ")
//        .compactMap { Int($0) }
//        .reduce((true, Int.min)) { ($0.0 && $0.1 < $1, $1) }.0
//}

let s = "1 box has 3 blue 4 red 6 green and 12 yellow marbles"
print(Solution().areNumbersAscending(s))
