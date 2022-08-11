import 'package:leetcode/src/problem/squares_of_a_sorted_array.977.dart';
import 'package:test/test.dart';

void main() => group('squares_of_a_sorted_array.977', () {
      final f = SquaresOfASortedArray();

      test('f([-4,-1,0,3,10])', () {
        expect(f([-4, -1, 0, 3, 10]), equals([0, 1, 9, 16, 100]));
      });

      test('f([-7,-3,2,3,11])', () {
        expect(f([-7, -3, 2, 3, 11]), equals([4, 9, 9, 49, 121]));
      });
    });
