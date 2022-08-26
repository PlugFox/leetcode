import 'package:leetcode/src/problem/2235.add_two_integers.dart';
import 'package:test/test.dart';

void main() => group('add_two_integers', () {
      final f = Solution().sum;

      test('f(12, 5)', () {
        expect(f(12, 5), equals(17));
      });

      test('f(-10, 4)', () {
        expect(f(-10, 4), equals(-6));
      });
    });
