import Foundation

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var stringArr = s.components(separatedBy: " ")
        stringArr.removeLast(stringArr.count - k)
        return stringArr.joined(separator: " ")
    }
    
//    func truncateSentence(_ s: String, _ k: Int) -> String {
//        s
//            .components(separatedBy: " ")
//            .prefix(k)
//            .joined(separator: " ")
//    }
    
//    func truncateSentence(_ s: String, _ k: Int) -> String {
//        return s.split(separator: " ")[..<k].joined(separator: " ")
//    }
}

let s = "What is the solution to this problem", k = 4
print(Solution().truncateSentence(s, k))
