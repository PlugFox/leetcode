import 'package:leetcode/src/problem/richest_customer_wealth.1672.dart';
import 'package:test/test.dart';

void main() => group('richest_customer_wealth.1672', () {
      test('f([[1,2,3],[3,2,1]])', () {
        expect(
          RichestCustomerWealth()([
            [1, 2, 3],
            [3, 2, 1]
          ]),
          equals(6),
        );
      });

      test('f([[1,5],[7,3],[3,5]])', () {
        expect(
          RichestCustomerWealth()([
            [1, 5],
            [7, 3],
            [3, 5]
          ]),
          equals(10),
        );
      });

      test('f([[2,8,7],[7,1,3],[1,9,5]])', () {
        expect(
          RichestCustomerWealth()([
            [2, 8, 7],
            [7, 1, 3],
            [1, 9, 5]
          ]),
          equals(17),
        );
      });
    });
