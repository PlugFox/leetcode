import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('list_node', () {
      test('create', () {
        expect(() => ListNode<int>(1), returnsNormally);
        expect(ListNode<int>(1), isA<ListNode<int>>());
        expect(ListNode<int>(1).val, equals(1));
      });

      test('list', () {
        expect(ListNode<int>.of([1, 2, 3]).toList(), equals([1, 2, 3]));
      });
    });
