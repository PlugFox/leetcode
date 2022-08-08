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

class LongestIncreasingSubsequence {
  int call(List<int> nums) {
    final sub = <int>[];
    for (final n in nums) {
      final i = _binarySearch(sub, n);
      i == sub.length ? sub.add(n) : sub[i] = n;
    }
    return sub.length;
  }

  static int _binarySearch<T extends Comparable<Object?>>(List<T> sortedList, T value) {
    var min = 0, max = sortedList.length;
    while (min < max) {
      final mid = min + ((max - min) >> 1);
      final comp = sortedList[mid].compareTo(value);
      if (comp == 0) {
        return mid;
      } else if (comp < 0) {
        min = mid + 1;
      } else {
        max = mid;
      }
    }
    return min;
  }
}
