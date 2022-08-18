import 'package:leetcode/src/problem/1672.richest_customer_wealth.dart';
import 'package:test/test.dart';

void main() => group('richest_customer_wealth', () {
      final f = RichestCustomerWealth();

      test('f([[1,2,3],[3,2,1]])', () {
        expect(
          f([
            [1, 2, 3],
            [3, 2, 1]
          ]),
          equals(6),
        );
      });

      test('f([[1,5],[7,3],[3,5]])', () {
        expect(
          f([
            [1, 5],
            [7, 3],
            [3, 5]
          ]),
          equals(10),
        );
      });

      test('f([[2,8,7],[7,1,3],[1,9,5]])', () {
        expect(
          f([
            [2, 8, 7],
            [7, 1, 3],
            [1, 9, 5]
          ]),
          equals(17),
        );
      });
    });
