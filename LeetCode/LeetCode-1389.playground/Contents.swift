import Foundation

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var targetArray: [Int] = []
        targetArray.reserveCapacity(nums.count)
        
        for (i, val) in index.enumerated() {
            targetArray.insert(nums[i], at: val)
        }
        return targetArray
    }
    
//    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//        var res = [Int]()
//        for i in 0..<nums.count { res.insert(nums[i], at: index[i]) }
//        return res
//    }
    
//    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//        zip(nums, index).reduce(into: [Int]()) { $0.insert($1.0, at: $1.1) }
//    }
    
//    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//        nums.indices.reduce(into: [], {$0.insert(nums[$1], at: index[$1])})
//    }
}

let nums = [1,2,3,4,0], index = [0,1,2,3,0]
print(Solution().createTargetArray(nums, index))
