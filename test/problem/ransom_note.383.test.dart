import 'package:leetcode/src/problem/ransom_note.383.dart';
import 'package:test/test.dart';

void main() => group('ransom_note.383', () {
      final f = RansomNote();

      test('f(a, b)', () {
        expect(f('a', 'b'), isFalse);
      });

      test('f(aa, ab)', () {
        expect(f('aa', 'ab'), isFalse);
      });

      test('f(aa, aab)', () {
        expect(f('aa', 'aab'), isTrue);
      });
    });
