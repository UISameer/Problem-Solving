import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var mid = (left + right) / 2
            // If target is mid return
            if nums[mid] == target {
                return mid
            }
            // Left sorted portion
            else if nums[left] <= nums[mid] {
                if target > nums[mid] || target < nums[left]{
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            // Right sorted portion
            else {
                if target < nums[mid] || target > nums[right] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
        }
         return -1
    }
}

let nums = [4,5,6,7,0,1,2], target = 0
print(Solution().search(nums, target))

struct Food {
    var id: Int
    var name: Optional<String>
    var description: String?
}
