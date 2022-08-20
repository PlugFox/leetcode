/*
 * 414. Third Maximum Number
 * 
 * Given an integer array nums, return the third distinct maximum number in this array.
 * If the third maximum does not exist, return the maximum number.
 * 
 *  
 * Example 1:
 * 
 * Input: nums = [3,2,1]
 * Output: 1
 * Explanation:
 * The first distinct maximum is 3.
 * The second distinct maximum is 2.
 * The third distinct maximum is 1.
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [1,2]
 * Output: 2
 * Explanation:
 * The first distinct maximum is 2.
 * The second distinct maximum is 1.
 * The third distinct maximum does not exist, so the maximum (2) is returned instead.
 * 
 * 
 * Example 3:
 * 
 * Input: nums = [2,2,3,1]
 * Output: 1
 * Explanation:
 * The first distinct maximum is 3.
 * The second distinct maximum is 2 (both 2's are counted together since they have the same value).
 * The third distinct maximum is 1.
 *  
 * 
 * Constraints:
 * 
 * 1 <= nums.length <= 10^4
 * -2^31 <= nums[i] <= 2^31 - 1
 *  
 * 
 * Follow up: Can you find an O(n) solution?
 */

class Solution {
  int thirdMax(List<int> nums) {
    if (nums.isEmpty) throw ArgumentError.value(nums, 'nums', 'Array should contain at least one number');
    var m1 = nums[0];
    int? m2, m3;

    bool setMax1(int n) {
      if (m1 > n) return false;
      if (m1 < n) {
        m3 = m2;
        m2 = m1;
        m1 = n;
      }
      return true;
    }

    bool setMax2(int n) {
      if (m2 != null && m2! > n) return false;
      if (m2 == null || m2! < n) {
        m3 = m2;
        m2 = n;
      }
      return true;
    }

    bool setMax3(int n) {
      if (m3 != null && m3! > n) return false;
      if (m3 == null || m3! < n) {
        m3 = n;
      }
      return true;
    }

    for (var i = 1; i < nums.length; i++) {
      if (setMax1(nums[i]) || setMax2(nums[i]) || setMax3(nums[i])) continue;
    }

    return m3 == null || m2 == m3 ? m1 : m3!;
  }
}
