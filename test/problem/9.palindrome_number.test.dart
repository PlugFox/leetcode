import 'package:leetcode/src/problem/9.palindrome_number.dart';
import 'package:test/test.dart';

void main() => group('palindrome_number', () {
      final f = Solution().isPalindrome;

      test('f(121)', () {
        expect(f(121), isTrue);
      });

      test('f(-121)', () {
        expect(f(-121), isFalse);
      });

      test('f(1001)', () {
        expect(f(1001), isTrue);
      });

      test('f(10)', () {
        expect(f(10), isFalse);
      });
    });
