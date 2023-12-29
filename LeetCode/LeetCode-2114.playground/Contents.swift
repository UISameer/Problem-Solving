import Foundation

class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        
        var count = 0
        
        sentences.forEach { sentence in
            let components = sentence.components(separatedBy: .whitespacesAndNewlines)
            let words = components.filter { !$0.isEmpty }
            count = max(count, words.count)
        }
        return count
    }
    
        //    func mostWordsFound(_ sentences: [String]) -> Int {
        //        sentences.map { $0.components(separatedBy: " ") }.map { $0.count }.max() ?? 0
        //    }
    
//    func mostWordsFound(_ sentences: [String]) -> Int {
//        sentences
//            .map { n in
//                n.reduce(1) { $1.isWhitespace && !$1.isNewline ? $0 + 1 : $0 }
//            }
//            .max() ?? 0
//    }
}

var sentences = ["please wait", "continue to fight", "continue to win"]
print(Solution().mostWordsFound(sentences))
