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

    void swap(int x, int y) {
      if (x == y) return;
      nums[x] = nums[x] ^ nums[y];
      nums[y] = nums[x] ^ nums[y];
      nums[x] = nums[x] ^ nums[y];
    }

    var p = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 0) continue;
      swap(i, p);
      p++;
    }
  }
}
