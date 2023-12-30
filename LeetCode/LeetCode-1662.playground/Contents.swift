import Foundation

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.joined() == word2.joined()
    }
    
//    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
//        var ans1 = ""
//        var ans2 = ""
//        for i in 0 ..< word1.count {
//            ans1 += word1[i]
//        }
//        for i in 0 ..< word2.count {
//            ans2 += word2[i]
//        }
//        if ans1 == ans2 {
//            return true
//        } else {
//            return false
//        }
//    }
}

let word1 = ["a", "cb"], word2 = ["ab", "c"]
print(Solution().arrayStringsAreEqual(word1, word2))
