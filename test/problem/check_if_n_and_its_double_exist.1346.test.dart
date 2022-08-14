import 'package:leetcode/src/problem/check_if_n_and_its_double_exist.1346.dart';
import 'package:test/test.dart';

void main() => group('check_if_n_and_its_double_exist.1346', () {
      final f = CheckIfNAndItsDoubleExistLinear();

      test('f([])', () {
        expect(f([]), isFalse);
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
    });
