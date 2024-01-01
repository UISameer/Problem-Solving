import Foundation

/*
 Time complexity: O(n).
 Space complexity: O(n + n + n) -> O(n). Since we are creating three copies of an input string.
 */
class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var outputArr = Array(s)
        let stringArray = Array(s)
        
        for (index, value) in indices.enumerated() {
            outputArr[value] = stringArray[index]
        }
        return String(outputArr)
    }
    
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        return String(Array(s).enumerated().reduce(into: Array(s), { $0[indices[$1.0]] = $1.1 }))
//    }
    
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        var res = Array<Character>(repeating: "a", count: indices.count)
//        for i in 0 ..< indices.count { res[indices[i]] = Array(s)[i] }
//        return String(res)
//    }
    
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        var result = [String](repeating: "", count: s.count)
//        
//        for (index, char) in s.enumerated() {
//            result[indices[index]] = String(char)
//        }
//        return result.joined()
//    }
}

let s = "codeleet", indices = [4,5,6,7,0,2,1,3]
print(Solution().restoreString(s, indices))
