import 'package:leetcode/src/problem/234.palindrome_linked_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('palindrome_linked_list', () {
      final f = Solution().isPalindrome;

      test('f([])', () {
        expect(f(null), isTrue);
      });

      test('f([1])', () {
        expect(f(ListNode<int>.of(<int>[1])), isTrue);
      });

      test('f([1,2])', () {
        expect(f(ListNode<int>.of(<int>[1, 2])), isFalse);
      });

      test('f([1,2,1])', () {
        expect(f(ListNode<int>.of(<int>[1, 2, 1])), isTrue);
      });

      test('f([1,2,1,4])', () {
        expect(f(ListNode<int>.of(<int>[1, 2, 1, 4])), isFalse);
      });

      test('f([1, 2, 2, 1])', () {
        expect(f(ListNode<int>.of(<int>[1, 2, 2, 1])), isTrue);
      });
    });
