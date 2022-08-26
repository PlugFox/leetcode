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

class SolutionV1 {
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

class SolutionV2 {
  bool canConstruct(String ransomNote, String magazine) {
    final lettersCodeOffset = 'a'.codeUnits.first, lettersCount = 26;
    final ransomNoteLettersCount = List<int>.filled(lettersCount, 0, growable: false);
    final magazineLettersCount = List<int>.filled(lettersCount, 0, growable: false);
    void inc(List<int> list, String char) => list[char.codeUnitAt(0) - lettersCodeOffset]++;
    for (var i = 0; i < ransomNote.length; i++) inc(ransomNoteLettersCount, ransomNote[i]);
    for (var i = 0; i < magazine.length; i++) inc(magazineLettersCount, magazine[i]);
    for (var i = 0; i < lettersCount; i++) if (magazineLettersCount[i] < ransomNoteLettersCount[i]) return false;
    return true;
  }
}
