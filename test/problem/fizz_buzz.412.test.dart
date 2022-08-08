import 'package:leetcode/src/problem/fizz_buzz.412.dart';
import 'package:test/test.dart';

void main() => group('fizz_buzz.412', () {
      final f = FizzBuzz();

      test('f(3)', () {
        expect(f(3), equals(['1', '2', 'Fizz']));
      });

      test('f(5)', () {
        expect(f(5), equals(['1', '2', 'Fizz', '4', 'Buzz']));
      });

      test('f(15)', () {
        expect(
          f(15),
          equals(
            ['1', '2', 'Fizz', '4', 'Buzz', 'Fizz', '7', '8', 'Fizz', 'Buzz', '11', 'Fizz', '13', '14', 'FizzBuzz'],
          ),
        );
      });
    });
