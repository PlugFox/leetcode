import 'package:leetcode/src/problem/300.longest_increasing_subsequence.dart';
import 'package:test/test.dart';

void main() => group('longest_increasing_subsequence', () {
      final f = Solution().lengthOfLIS;

      test('f([10,9,2,5,3,7,101,18])', () {
        expect(f([10, 9, 2, 5, 3, 7, 101, 18]), equals(4));
      });

      test('f([0,1,0,3,2,3])', () {
        expect(f([0, 1, 0, 3, 2, 3]), equals(4));
      });

      test('f([7,7,7,7,7,7,7])', () {
        expect(f([7, 7, 7, 7, 7, 7, 7]), equals(1));
      });
    });
