class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        var occurrences: [Int: Int] = [:]
        
        for num in nums {
            if let value = occurrences[num] {
                count += value
                occurrences[num] = value + 1
            }  else {
                occurrences[num] = 1
            }
        }
        return count
    }
}

let sol = Solution()
let nums = [1, 2, 3, 1, 1, 3]
let goodPairsCount = sol.numIdenticalPairs(nums)
print(goodPairsCount)  // Output: 4
