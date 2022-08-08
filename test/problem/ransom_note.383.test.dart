import 'package:leetcode/src/problem/ransom_note.383.dart';
import 'package:test/test.dart';

void main() => group('ransom_note.383', () {
      test('f(a, b) = false', () {
        expect(RansomNote()('a', 'b'), isFalse);
      });

      test('f(aa, ab) = false', () {
        expect(RansomNote()('aa', 'ab'), isFalse);
      });

      test('f(aa, aab) = true', () {
        expect(RansomNote()('aa', 'aab'), isTrue);
      });
    });
