import 'package:leetcode/src/problem/ransom_note.383.dart';
import 'package:test/test.dart';

void main() => group('ransom_note.383', () {
      test('f(a, b)', () {
        expect(RansomNote()('a', 'b'), isFalse);
      });

      test('f(aa, ab)', () {
        expect(RansomNote()('aa', 'ab'), isFalse);
      });

      test('f(aa, aab)', () {
        expect(RansomNote()('aa', 'aab'), isTrue);
      });
    });
