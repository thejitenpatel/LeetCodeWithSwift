class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        let sortedArray = (nums1 + nums2).sorted()
//        let arrayCount = sortedArray.count
//        if arrayCount % 2 == 0 {
//            let middleLeftIndex = arrayCount / 2 - 1
//            let middleRightIndex = arrayCount / 2
//            return Double(sortedArray[middleLeftIndex] + sortedArray[middleRightIndex]) / 2.0
//        } else {
//            let middleIndex = arrayCount / 2
//            return Double(sortedArray[middleIndex])
//        }
        
        let m = nums1.count
        let n = nums2.count
            
        // Ensure nums1 is the smaller array for simplicity in the partitioning step
        if m > n {
            return findMedianSortedArrays(nums2, nums1)
        }
        
        var low = 0
        var high = m
            
        while low <= high {
            let partitionX = (low + high) / 2
            let partitionY = (m + n + 1) / 2 - partitionX
            
            let maxX = partitionX == 0 ? Int.min : nums1[partitionX - 1]
            let maxY = partitionY == 0 ? Int.min : nums2[partitionY - 1]
        
            let minX = partitionX == m ? Int.max : nums1[partitionX]
            let minY = partitionY == n ? Int.max : nums2[partitionY]
                
            if maxX <= minY && maxY <= minX {
                // Found the correct partition
                if (m + n) % 2 == 0 {
                    return Double(max(maxX, maxY) + min(minX, minY)) / 2.0
                } else {
                    return Double(max(maxX, maxY))
                }
            } else if maxX > minY {
                high = partitionX - 1
            } else {
                low = partitionX + 1
            }
        }
        fatalError("Input arrays are not sorted.")
    }
}

let solution = Solution()
print(solution.findMedianSortedArrays([1,2], [3, 4]))
