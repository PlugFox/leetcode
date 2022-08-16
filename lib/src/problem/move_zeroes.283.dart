/*
 * 283. Move Zeroes
 * 
 * Given an integer array nums, move all 0's to the end of it 
 * while maintaining the relative order of the non-zero elements.
 * 
 * Note that you must do this in-place without making a copy of the array.
 * 
 *  
 * Example 1:
 * 
 * Input: nums = [0,1,0,3,12]
 * Output: [1,3,12,0,0]
 * 
 * 
 * Example 2:
 * 
 * Input: nums = [0]
 * Output: [0]
 *  
 * 
 * Constraints:
 * 
 * 1 <= nums.length <= 10^4
 * -2^31 <= nums[i] <= 2^31 - 1
 */

class MoveZeroes {
  void call(List<int> nums) {
    if (nums.length < 2) return;

    void move(int from, int to) {
      if (from == to) return;
      nums[to] = nums[from];
      nums[from] = 0;
    }

    var p = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 0) continue;
      move(i, p);
      p++;
    }
  }
}
