import 'package:leetcode/src/problem/487.max_consecutive_ones_ii.dart';
import 'package:test/test.dart';

void main() => group('max_consecutive_ones_ii', () {
      final f = Solution().findMaxConsecutiveOnes;

      test('f([1])', () {
        expect(f([1]), equals(1));
      });

      test('f([1,0,1,1,0])', () {
        expect(f([1, 0, 1, 1, 0]), equals(4));
      });

      test('f([1,0,1,1,0,1])', () {
        expect(f([1, 0, 1, 1, 0, 1]), equals(4));
      });

      test('f([1,1,0,1])', () {
        expect(f([1, 1, 0, 1]), equals(4));
      });

      test('f([0,1,0,0,1,1,1,1])', () {
        expect(f([0, 1, 0, 0, 1, 1, 1, 1]), equals(5));
      });
    });
