/*
 * 977. Squares of a Sorted Array
 * 
 * Given an integer array nums sorted in non-decreasing order, 
 * return an array of the squares of each number sorted in non-decreasing order.
 * 
 * 
 * Example 1:
 * 
 * Input: nums = [-4,-1,0,3,10]
 * Output: [0,1,9,16,100]
 * Explanation: After squaring, the array becomes [16,1,0,9,100].
 * After sorting, it becomes [0,1,9,16,100].
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [-7,-3,2,3,11]
 * Output: [4,9,9,49,121]
 *  
 * 
 * Constraints:
 * 
 * 1 <= nums.length <= 10^4
 * -10^4 <= nums[i] <= 10^4
 * nums is sorted in non-decreasing order.
 *  
 * 
 * Follow up: Squaring each element and sorting the new array is very trivial, 
 * could you find an O(n) solution using a different approach?
 */

class Solution {
  List<int> sortedSquares(List<int> nums) {
    final result = List<int>.filled(nums.length, 0, growable: false);
    for (var left = 0, right = nums.length - 1, n = 0, i = right; i >= 0; i--) {
      if (nums[left].abs() < nums[right].abs()) {
        n = nums[right];
        right--;
      } else {
        n = nums[left];
        left++;
      }
      result[i] = n * n;
    }
    return result;
  }
}
