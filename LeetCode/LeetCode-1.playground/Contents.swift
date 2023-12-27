import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res: [Int] = []
        for i in 0 ..< nums.count {
            for j in i + 1 ..< nums.count {
                if(nums[j] == target - nums[i]) {
                    res.append(i)
                    res.append(j)
                }
            }
        }
        return res
    }
}

var nums = [2,7,11,15], target = 9
print(Solution().twoSum(nums, target))
