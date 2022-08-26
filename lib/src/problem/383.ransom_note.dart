/*
 * 383. Ransom Note
 * 
 * Given two strings ransomNote and magazine,
 * return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
 * 
 * Each letter in magazine can only be used once in ransomNote.
 * 
 *  
 * Example 1:
 * 
 * Input: ransomNote = "a", magazine = "b"
 * Output: false
 * 
 * 
 * Example 2:
 * 
 * Input: ransomNote = "aa", magazine = "ab"
 * Output: false
 * 
 * 
 * Example 3:
 * 
 * Input: ransomNote = "aa", magazine = "aab"
 * Output: true
 *  
 * 
 * Constraints:
 * 
 * 1 <= ransomNote.length, magazine.length <= 10^5
 * ransomNote and magazine consist of lowercase English letters.
 */

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    final lettersCodeOffset = 'a'.codeUnits.first, lettersCount = 26;
    final indexes = List<int>.filled(lettersCount, 0, growable: false);
    int getIndex(String char) => indexes[char.codeUnitAt(0) - lettersCodeOffset];
    int setIndex(String char, int index) => indexes[char.codeUnitAt(0) - lettersCodeOffset] = index;
    for (var i = 0; i < ransomNote.length; i++) {
      final index = magazine.indexOf(ransomNote[i], getIndex(ransomNote[i]));
      if (index == -1) return false;
      setIndex(ransomNote[i], index + 1);
    }
    return true;
  }
}
