import 'package:leetcode/src/problem/1295.find_numbers_with_even_number_of_digits.dart';
import 'package:test/test.dart';

void main() => group('find_numbers_with_even_number_of_digits', () {
      final f1 = SolutionV1().findNumbers;
      final f2 = SolutionV2().findNumbers;

      test('f([])', () {
        {
          expect(f1(<int>[]), equals(0));
        }
        {
          expect(f2(<int>[]), equals(0));
        }
      });

      test('f([1000])', () {
        {
          expect(f1(<int>[1000]), equals(1));
        }
        {
          expect(f2(<int>[1000]), equals(1));
        }
      });

      test('f([12,345,2,6,7896])', () {
        {
          expect(f1(<int>[12, 345, 2, 6, 7896]), equals(2));
        }
        {
          expect(f2(<int>[12, 345, 2, 6, 7896]), equals(2));
        }
      });

      test('f([555,901,482,1771])', () {
        {
          expect(f1(<int>[555, 901, 482, 1771]), equals(1));
        }
        {
          expect(f2(<int>[555, 901, 482, 1771]), equals(1));
        }
      });

      test('f([12,345,2,6,7896])', () {
        {
          expect(f1(<int>[12, 345, 2, 6, 7896]), equals(2));
        }
        {
          expect(f2(<int>[12, 345, 2, 6, 7896]), equals(2));
        }
      });
    });
