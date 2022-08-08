import 'package:leetcode/src/problems/add_two_integers.dart';
import 'package:test/test.dart';

void main() => group('add_two_integers', () {
      test('12 + 5 = 17', () {
        expect(addTwoIntegers(12, 5), equals(17));
      });

      test('-10 + 4 = -6', () {
        expect(addTwoIntegers(-10, 4), equals(-6));
      });
    });
