import Foundation

class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        
        var occurrences: [Int] = []
        
        for (index, word) in words.enumerated() {
            if word.contains(x) {
                occurrences.append(index)
            }
        }
        return occurrences
    }
    
//    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
//        words
//            .enumerated()
//            .filter { $0.element.contains(x) }
//            .map(\.offset)
//    }
    
//    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
//        words.indices.filter { words[$0].contains(x) }
//    }
}

var words = ["abc","bcd","aaaa","cbc"]
var x: Character = "a"
print(Solution().findWordsContaining(words, x))
