class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = [Int]()
        ans.reserveCapacity(nums.count * 2)
        
        for i in nums.count ..< ans.count {
            print(i)
            ans[i-nums.count] = nums[i-nums.count]
            ans[i] = ans[i-nums.count]
        }
        
        return ans
    }
}

let solution = Solution()
print(solution.getConcatenation([1, 2, 1]))
