/*
 * 941. Valid Mountain Array
 * 
 * Given an array of integers arr, return true if and only if it is a valid mountain array.
 * 
 * Recall that arr is a mountain array if and only if:
 * 
 * arr.length >= 3
 * There exists some i with 0 < i < arr.length - 1 such that:
 * arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
 * arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
 * 
 * 
 * Example 1:
 * 
 * Input: arr = [2,1]
 * Output: false
 * 
 * 
 * Example 2:
 * 
 * Input: arr = [3,5,5]
 * Output: false
 * 
 * 
 * Example 3:
 * 
 * Input: arr = [0,3,2,1]
 * Output: true
 *  
 * 
 * Constraints:
 * 
 * 1 <= arr.length <= 10^4
 * 0 <= arr[i] <= 10^4
 */

class Solution {
  bool validMountainArray(List<int> arr) {
    if (arr.length < 3 || arr[0] >= arr[1]) return false;
    var inc = true;
    for (var i = 2; i < arr.length; i++) {
      if (inc) {
        if (arr[i] > arr[i - 1]) continue;
        inc = false;
      }
      if (arr[i] < arr[i - 1]) continue;
      return false;
    }
    return !inc;
  }
}
