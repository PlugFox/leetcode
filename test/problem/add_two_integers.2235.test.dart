import 'package:leetcode/src/problem/add_two_integers.2235.dart';
import 'package:test/test.dart';

void main() => group('add_two_integers.2235', () {
      test('12 + 5 = 17', () {
        expect(AddTwoIntegers()(12, 5), equals(17));
      });

      test('-10 + 4 = -6', () {
        expect(AddTwoIntegers()(-10, 4), equals(-6));
      });
    });
