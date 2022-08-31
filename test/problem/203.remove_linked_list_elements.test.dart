import 'package:leetcode/src/problem/203.remove_linked_list_elements.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('remove_linked_list_elements', () {
      final f = Solution().removeElements;

      test('f([], 1)', () {
        expect(f(null, 1), isNull);
      });

      test('f([7,7,7,7], 7)', () {
        expect(f(ListNode.of(<int>[7, 7, 7, 7]), 7), isNull);
      });

      test('f([1,2,6,3,4,5,6], 6)', () {
        expect(f(ListNode.of(<int>[1, 2, 6, 3, 4, 5, 6]), 6)?.toList(), equals([1, 2, 3, 4, 5]));
      });
    });
