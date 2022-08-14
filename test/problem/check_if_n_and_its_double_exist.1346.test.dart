import 'package:leetcode/src/problem/check_if_n_and_its_double_exist.1346.dart';
import 'package:test/test.dart';

void main() => group('check_if_n_and_its_double_exist.1346', () {
      final f1 = CheckIfNAndItsDoubleExistLinear();
      final f2 = CheckIfNAndItsDoubleExistBinarySearch();

      test('f([])', () {
        {
          expect(f1([]), isFalse);
        }
        {
          expect(f2([]), isFalse);
        }
      });

      test('f([10,2,5,3])', () {
        {
          expect(f1([10, 2, 5, 3]), isTrue);
        }
        {
          expect(f2([10, 2, 5, 3]), isTrue);
        }
      });

      test('f([7,1,14,11])', () {
        {
          expect(f1([7, 1, 14, 11]), isTrue);
        }
        {
          expect(f2([7, 1, 14, 11]), isTrue);
        }
      });

      test('f([3,1,7,11])', () {
        {
          expect(f1([3, 1, 7, 11]), isFalse);
        }
        {
          expect(f2([3, 1, 7, 11]), isFalse);
        }
      });

      test('f([-10,12,-20,-8,15])', () {
        {
          expect(f1([-10, 12, -20, -8, 15]), isTrue);
        }
        {
          expect(f2([-10, 12, -20, -8, 15]), isTrue);
        }
      });
    });
