/*
 * 487. Max Consecutive Ones II
 * 
 * Given a binary array nums, return the maximum number of consecutive 1's 
 * in the array if you can flip at most one 0.
 *  
 * 
 * Example 1:
 * 
 * Input: nums = [1,0,1,1,0]
 * Output: 4
 * Explanation: Flip the first zero will get the maximum number of consecutive 1s. 
 * After flipping, the maximum number of consecutive 1s is 4.
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [1,0,1,1,0,1]
 * Output: 4
 *  
 * 
 * Constraints:
 * 
 * 1 <= nums.length <= 10^5
 * nums[i] is either 0 or 1.
 *  
 * 
 * Follow up: What if the input numbers come in one by one as an infinite stream? 
 * In other words, you can't store all numbers coming from the stream as 
 * it's too large to hold in memory. Could you solve it efficiently?
 */

import 'dart:math' as math;

class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    var result = 0, current = 0, next = 0;

    void flipZero() {
      result = math.max(result, current);
      current = next + 1;
      next = 0;
    }

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        current++;
        next++;
        continue;
      }
      flipZero();
    }
    return math.max(result, current);
  }
}
