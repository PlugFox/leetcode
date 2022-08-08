import 'package:leetcode/src/problem/running_sum_of_1d_array.1480.dart';
import 'package:test/test.dart';

void main() => group('running_sum_of_1d_array.1480', () {
      test('f([1,2,3,4]) = [1,3,6,10]', () {
        expect(
          RunningSumOf1DArray()([1, 2, 3, 4]),
          equals([1, 3, 6, 10]),
        );
      });

      test('f([1,1,1,1,1]) = [1,2,3,4,5]', () {
        expect(
          RunningSumOf1DArray()([1, 1, 1, 1, 1]),
          equals([1, 2, 3, 4, 5]),
        );
      });

      test('f([3,1,2,10,1]) = [3,4,6,16,17]', () {
        expect(
          RunningSumOf1DArray()([3, 1, 2, 10, 1]),
          equals([3, 4, 6, 16, 17]),
        );
      });
    });
