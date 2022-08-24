import 'package:leetcode/src/problem/19.remove_nth_node_from_end_of_list.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('remove_duplicates_from_sorted_array', () {
      final f = Solution().removeNthFromEnd;

      test('f([1])', () {
        expect(f(ListNode<int>.of(<int>[1]), 1), isNull);
      });

      test('f([1,2])', () {
        expect(f(ListNode<int>.of(<int>[1, 2]), 1), containsAllInOrder(<int>[1]));
      });

      test('f([1,2])', () {
        expect(f(ListNode<int>.of(<int>[1, 2]), 2), containsAllInOrder(<int>[2]));
      });

      test('f([1,2,3,4,5])', () {
        expect(f(ListNode<int>.of(<int>[1, 2, 3, 4, 5]), 2), containsAllInOrder(<int>[1, 2, 3, 5]));
      });
    });
