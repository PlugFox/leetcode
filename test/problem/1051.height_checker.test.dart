import 'package:leetcode/src/problem/1051.height_checker.dart';
import 'package:test/test.dart';

void main() => group('height_checker', () {
      final f = Solution().heightChecker;

      test('f([])', () {
        expect(f([]), equals(0));
      });

      test('f([1])', () {
        expect(f([1]), equals(0));
      });

      test('f([2, 1])', () {
        expect(f([2, 1]), equals(2));
      });

      test('f([1,1,4,2,1,3])', () {
        expect(f([1, 1, 4, 2, 1, 3]), equals(3));
      });

      test('f([5,1,2,3,4])', () {
        expect(f([5, 1, 2, 3, 4]), equals(5));
      });

      test('f([1,2,3,4,5])', () {
        expect(f([1, 2, 3, 4, 5]), equals(0));
      });
    });
