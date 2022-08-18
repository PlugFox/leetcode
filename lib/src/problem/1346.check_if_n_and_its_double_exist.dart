/*
 * 1346. Check If N and Its Double Exist
 * 
 * Given an array arr of integers, check if there exists two integers N and M 
 * such that N is the double of M ( i.e. N = 2 * M).
 * 
 * More formally check if there exists two indices i and j such that :
 * 
 * i != j
 * 0 <= i, j < arr.length
 * arr[i] == 2 * arr[j]
 *  
 * 
 * Example 1:
 * 
 * Input: arr = [10,2,5,3]
 * Output: true
 * Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.
 * 
 * 
 * Example 2:
 * 
 * Input: arr = [7,1,14,11]
 * Output: true
 * Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.
 * 
 * 
 * Example 3:
 * 
 * Input: arr = [3,1,7,11]
 * Output: false
 * Explanation: In this case does not exist N and M, such that N = 2 * M.
 *  
 * 
 * Constraints:
 * 
 * 2 <= arr.length <= 500
 * -10^3 <= arr[i] <= 10^3
 */

class CheckIfNAndItsDoubleExistLinear {
  bool call(List<int> arr) {
    if (arr.length < 2) return false;
    for (var i = 0; i < arr.length - 1; i++) {
      final x = arr[i] * 2, y = arr[i] / 2;
      if (x == 0) {
        for (var j = i + 1; j < arr.length; j++) {
          if (arr[j] == 0) return true;
          continue;
        }
      } else if (y == y.truncate()) {
        for (var j = i + 1; j < arr.length; j++) {
          if (arr[j] == x || arr[j] == y) return true;
          continue;
        }
      } else {
        for (var j = i + 1; j < arr.length; j++) {
          if (arr[j] == x) return true;
          continue;
        }
      }
    }
    return false;
  }
}

class CheckIfNAndItsDoubleExistBinarySearch {
  bool call(List<int> arr) {
    if (arr.length < 2) return false;
    final list = arr.toList(growable: false)..sort();
    final length = list.length;

    final firstPositive = () {
      for (var i = 0; i < length; i++) {
        if (list[i] > 0) return i;
      }
      return null;
    }();
    int? prev;

    // Positive iteration
    if (firstPositive != null) {
      final iterateTo = length - 1;
      for (var i = firstPositive; i < iterateTo; i++) {
        if (list[i] == prev) continue;
        if (_binarySearch(list, list[i] * 2, from: i + 1, to: length) != null) {
          return true;
        }
        prev = list[i];
      }
    }

    // Negative iteration
    if (firstPositive != 0) {
      for (var i = (firstPositive ?? length) - 1; i > 0; i--) {
        if (list[i] == prev) continue;
        if (_binarySearch(list, list[i] * 2, from: 0, to: i) != null) {
          return true;
        }
        prev = list[i];
      }
    }

    return false;
  }

  static int? _binarySearch<T extends Comparable<Object?>>(
    List<T> list,
    T value, {
    int? from,
    int? to,
    int Function(T, T)? compare,
  }) {
    var min = from ?? 0, max = to ?? list.length;
    compare ??= (a, b) => a.compareTo(b);
    while (min < max) {
      final mid = min + ((max - min) >> 1);
      final comp = compare(list[mid], value);
      if (comp == 0) {
        return mid;
      } else if (comp.isNegative) {
        min = mid + 1;
      } else {
        max = mid;
      }
    }
    return null;
  }
}
