import 'package:leetcode/src/problem/383.ransom_note.dart';
import 'package:test/test.dart';

void main() => group('ransom_note', () {
      final f = Solution().canConstruct;

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
