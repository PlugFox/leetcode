import 'package:leetcode/src/problem/1295.find_numbers_with_even_number_of_digits.dart';
import 'package:test/test.dart';

void main() => group('find_numbers_with_even_number_of_digits', () {
      final f = Solution().findNumbers;

      test('f([])', () {
        expect(f(<int>[]), equals(0));
      });

      test('f([1000])', () {
        expect(f(<int>[1000]), equals(1));
      });

      test('f([12,345,2,6,7896])', () {
        expect(f(<int>[12, 345, 2, 6, 7896]), equals(2));
      });

      test('f([555,901,482,1771])', () {
        expect(f(<int>[555, 901, 482, 1771]), equals(1));
      });

      test('f([12,345,2,6,7896])', () {
        expect(f(<int>[12, 345, 2, 6, 7896]), equals(2));
      });
    });
