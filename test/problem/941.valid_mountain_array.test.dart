import 'package:leetcode/src/problem/941.valid_mountain_array.dart';
import 'package:test/test.dart';

void main() => group('valid_mountain_array', () {
      final f = Solution().validMountainArray;

      test('f([])', () {
        expect(f([]), isFalse);
      });

      test('f([0])', () {
        expect(f([0]), isFalse);
      });

      test('f([2,1])', () {
        expect(f([2, 1]), isFalse);
      });

      test('f([2,3,1])', () {
        expect(f([2, 3, 1]), isTrue);
      });

      test('f([3,5,5])', () {
        expect(f([3, 5, 5]), isFalse);
      });

      test('f([0,3,2,1])', () {
        expect(f([0, 3, 2, 1]), isTrue);
      });

      test('f([0,1,2,3,4,5,6,7,8,9])', () {
        expect(f([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), isFalse);
      });

      test('f([9,8,7,6,5,4,3,2,1,0])', () {
        expect(f([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]), isFalse);
      });
    });
