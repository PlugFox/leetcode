import 'package:leetcode/src/problem/number_of_steps_to_reduce_a_number_to_zero.1342.dart';
import 'package:test/test.dart';

void main() => group('number_of_steps_to_reduce_a_number_to_zero.1342', () {
      test('f(14)', () {
        expect(
          NumberOfStepsToReduceANumberToZero()(14),
          equals(6),
        );
      });

      test('f(8)', () {
        expect(
          NumberOfStepsToReduceANumberToZero()(8),
          equals(4),
        );
      });

      test('f(123)', () {
        expect(
          NumberOfStepsToReduceANumberToZero()(123),
          equals(12),
        );
      });
    });
