import 'package:leetcode/src/problem/383.ransom_note.dart';
import 'package:test/test.dart';

void main() => group('ransom_note', () {
      final f1 = SolutionV1().canConstruct;
      final f2 = SolutionV2().canConstruct;

      test('f(a, b)', () {
        expect(f1('a', 'b'), isFalse);
        expect(f2('a', 'b'), isFalse);
      });

      test('f(aa, ab)', () {
        expect(f1('aa', 'ab'), isFalse);
        expect(f2('aa', 'ab'), isFalse);
      });

      test('f(aa, aab)', () {
        expect(f1('aa', 'aab'), isTrue);
        expect(f2('aa', 'aab'), isTrue);
      });
    });
