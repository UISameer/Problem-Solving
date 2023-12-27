import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        for num in nums {
            if(num == val) {
                nums.removeAll{ $0 == num }
            }
        }
        return nums.count
    }
}

var nums = [3,2,2,3], val = 3
print(Solution().removeElement(&nums, val))
