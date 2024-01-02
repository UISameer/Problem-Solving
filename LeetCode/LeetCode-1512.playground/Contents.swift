import Foundation

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count  = 0
        for i in 0 ..< nums.count {
            for j in 0 ..< i {
                if nums[i] == nums[j] {
                    count += 1
                }
            }
        }
        return count
    }
    
//    func numIdenticalPairs(_ nums: [Int]) -> Int {
//        var res = 0, map = [Int:Int]()
//        nums.forEach {
//            res += map[$0] ?? 0
//            map[$0,default: 0] += 1
//        }
//        return res
//    }
    
//    func numIdenticalPairs(_ nums: [Int]) -> Int {
//        var (ans, count) = (0, Array(repeating: 0, count: 101))
//        for num in nums {
//            ans += count[num]
//            count[num] += 1
//        }
//        return ans
//    }
}

let nums = [1,1,1,1]
print(Solution().numIdenticalPairs(nums))
