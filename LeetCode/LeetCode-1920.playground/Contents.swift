import Foundation

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []
        for (index, value) in nums.enumerated() {
            ans.append(nums[nums[index]])
        }
        return ans
    }
    
    func buildArray(_ nums: [Int]) -> [Int] {
        return nums.map { nums[$0] }
    }
}

let nums = [5,0,1,2,3,4]
print(Solution().buildArray(nums))
