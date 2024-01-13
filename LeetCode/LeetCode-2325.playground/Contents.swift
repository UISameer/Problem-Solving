import Foundation

class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        var alphabet = Array("zyxwvutsrqponmlkjihgfedcba") // O(1) fixed size 26
        var dict = [Character: Character]() // O(1) same as alphabet length=26
        
            // O(n) -> n is length of key
        for k in key where (dict[k] == nil && k != " ") {
            if alphabet.isEmpty {
                break
            }
            
                // using removeLast -> O(1), removeFirst -> O(n)
            dict[k] = alphabet.removeLast()
        }
        
            // O(m) -> m is length of message
        return message.reduce("") { $0 + String(dict[$1] ?? " ") }
    }
}

let key = "the quick brown fox jumps over the lazy dog"
let message = "vkbs bs t suepuv"
print(Solution().decodeMessage(key, message))

