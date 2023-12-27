import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        
        for i in digits.indices.reversed()  {
            guard digits[i] == 9 else {
                digits[i] += 1
                return digits
            }
            
            digits[i] = 0
        }
        
        digits.insert(1, at: 0)
        return digits
    }
}

let digits = [1,2,3]
print(Solution().plusOne(digits))
