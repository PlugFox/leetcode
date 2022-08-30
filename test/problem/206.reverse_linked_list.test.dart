import 'package:leetcode/src/problem/206.reverse_linked_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('reverse_linked_list', () {
      final f = Solution().reverseList;

      test('f([])', () {
        expect(f(null), isNull);
      });

      test('f([1])', () {
        expect(f(ListNode<int>.of(<int>[1])), containsAllInOrder(<int>[1]));
      });

      test('f([1,2])', () {
        expect(f(ListNode<int>.of(<int>[1, 2])), containsAllInOrder(<int>[2, 1]));
      });

      test('f([1,2,3,4,5])', () {
        expect(f(ListNode<int>.of(<int>[1, 2, 3, 4, 5])), containsAllInOrder(<int>[5, 4, 3, 2, 1]));
      });
    });
