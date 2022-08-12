/*
 * 1089. Duplicate Zeros
 * 
 * Given a fixed-length integer array arr, duplicate each occurrence of zero, 
 * shifting the remaining elements to the right.
 * 
 * Note that elements beyond the length of the original array are not written. 
 * Do the above modifications to the input array in place and do not return anything.
 * 
 *  
 * Example 1:
 * 
 * Input: arr = [1,0,2,3,0,4,5,0]
 * Output: [1,0,0,2,3,0,0,4]
 * Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 * 
 * 
 * Example 2:
 * 
 * Input: arr = [1,2,3]
 * Output: [1,2,3]
 * Explanation: After calling your function, the input array is modified to: [1,2,3]
 *  
 * 
 * Constraints:
 * 
 * 1 <= arr.length <= 10^4
 * 0 <= arr[i] <= 9
 */

class DuplicateZeros {
  void call(List<int> arr) {
    final length = arr.length;

    void shift(int pos) {
      assert(pos < length, 'position is out of range');
      for (var i = length - 1; i > pos; i--) {
        arr[i] = arr[i - 1];
      }
    }

    for (var i = 0; i < length - 1; i++) {
      if (arr[i] != 0) continue;
      shift(i + 1);
      arr[i + 1] = 0;
      i++;
    }
  }
}