/*
 * 300. Longest Increasing Subsequence
 * 
 * Given an integer array nums, return the length of the longest strictly increasing subsequence.
 * 
 * A subsequence is a sequence that can be derived from an array by deleting some or no elements without changing the order of the remaining elements. For example, [3,6,2,7] is a subsequence of the array [0,3,1,6,2,2,7].
 * 
 * 
 * Example 1:
 * 
 * Input: nums = [10,9,2,5,3,7,101,18]
 * Output: 4
 * Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [0,1,0,3,2,3]
 * Output: 4
 * 
 * 
 * Example 3:
 * 
 * Input: nums = [7,7,7,7,7,7,7]
 * Output: 1
 *  
 * 
 * Constraints:
 * 
 * 1 <= nums.length <= 2500
 * -10^4 <= nums[i] <= 10^4
 *  
 * 
 * Follow up: Can you come up with an algorithm that runs in O(n log(n)) time complexity?
 */

import 'dart:math' as math;

class LongestIncreasingSubsequence {
  int call(List<int> nums) {
    final dp = List<int>.filled(nums.length, 1);
    for (var i = 1; i < nums.length; i++) {
      for (var j = 0; j < i; j++) {
        if (nums[i] > nums[j]) {
          dp[i] = math.max(dp[i], dp[j] + 1);
        }
      }
    }
    return dp.reduce(math.max);
  }
}
