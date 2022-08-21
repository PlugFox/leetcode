/*
 * 448. Find All Numbers Disappeared in an Array
 * 
 * Given an array nums of n integers where nums[i] is in the range [1, n],
 * return an array of all the integers in the range [1, n] that do not appear in nums.
 *  
 * 
 * Example 1:
 * 
 * Input: nums = [4,3,2,7,8,2,3,1]
 * Output: [5,6]
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [1,1]
 * Output: [2]
 *  
 * 
 * Constraints:
 * 
 * n == nums.length
 * 1 <= n <= 10^5
 * 1 <= nums[i] <= n
 *  
 * 
 * Follow up: Could you do it without extra space and in O(n) runtime?
 * You may assume the returned list does not count as extra space.
 */

class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    assert(nums.isNotEmpty, 'Array should contains numbers');
    for (var i = 0; i < nums.length; i++) {
      final e = nums[i].abs();
      assert(e > 0, 'Number in array should be greater then 0');
      assert(e <= nums.length, 'Number in array should be lower or equal then ${nums.length}');
      nums[e - 1] = -nums[e - 1].abs();
    }
    final result = <int>[];
    for (var i = 0; i < nums.length; i++) {
      nums[i].isNegative ? nums[i] = nums[i].abs() : result.add(i + 1);
    }
    return result;
  }
}
