import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        guard !nums.isEmpty else { return 0 }
        
        var count = 1
        
        for i in nums.indices.dropFirst()
        where nums[i] != nums[i - 1] {
            nums[count] = nums[i]
            count += 1
        }
        
        return count
    }
}

var nums = [1,1,2]
print(Solution().removeDuplicates(&nums))
