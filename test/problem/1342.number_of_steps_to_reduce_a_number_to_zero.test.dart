import 'package:leetcode/src/problem/1342.number_of_steps_to_reduce_a_number_to_zero.dart';
import 'package:test/test.dart';

void main() => group('number_of_steps_to_reduce_a_number_to_zero', () {
      final f = Solution().numberOfSteps;

      test('f(14)', () {
        expect(f(14), equals(6));
      });

      test('f(8)', () {
        expect(f(8), equals(4));
      });

      test('f(123)', () {
        expect(f(123), equals(12));
      });
    });
