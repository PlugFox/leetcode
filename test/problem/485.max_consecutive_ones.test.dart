import 'package:leetcode/src/problem/485.max_consecutive_ones.dart';
import 'package:test/test.dart';

void main() => group('max_consecutive_ones', () {
      final f = Solution().findMaxConsecutiveOnes;

      test('f([0])', () {
        expect(f([0]), equals(0));
      });

      test('f([1])', () {
        expect(f([1]), equals(1));
      });

      test('f([1,1,0,1,1,1])', () {
        expect(f([1, 1, 0, 1, 1, 1]), equals(3));
      });

      test('f([1,0,1,1,0,1])', () {
        expect(f([1, 0, 1, 1, 0, 1]), equals(2));
      });
    });
