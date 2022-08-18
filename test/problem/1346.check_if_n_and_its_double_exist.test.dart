import 'package:leetcode/src/problem/1346.check_if_n_and_its_double_exist.dart';
import 'package:test/test.dart';

void main() => group('check_if_n_and_its_double_exist', () {
      final f = Solution().checkIfExist;

      test('f([])', () {
        expect(f([]), isFalse);
      });

      test('f([10,0,2,0])', () {
        expect(f([10, 0, 2, 0]), isTrue);
      });

      test('f([10,0,2,3])', () {
        expect(f([10, 0, 2, 3]), isFalse);
      });

      test('f([10,2,5,3])', () {
        expect(f([10, 2, 5, 3]), isTrue);
      });

      test('f([7,1,14,11])', () {
        expect(f([7, 1, 14, 11]), isTrue);
      });

      test('f([3,1,7,11])', () {
        expect(f([3, 1, 7, 11]), isFalse);
      });

      test('f([-10,12,-20,-8,15])', () {
        expect(f([-10, 12, -20, -8, 15]), isTrue);
      });
    });
