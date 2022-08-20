import 'package:leetcode/src/problem/414.third_maximum_number.dart';
import 'package:test/test.dart';

void main() => group('third_maximum_number', () {
      final f = Solution().thirdMax;

      test('f([1,2])', () {
        expect(f([1, 2]), equals(2));
      });

      test('f([3,2,1])', () {
        expect(f([3, 2, 1]), equals(1));
      });

      test('f([2,2,3,1])', () {
        expect(f([2, 2, 3, 1]), equals(1));
      });

      test('f([])', () {
        expect(() => f([]), throwsArgumentError);
      });
    });
