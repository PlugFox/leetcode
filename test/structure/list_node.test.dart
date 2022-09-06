import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('list_node', () {
      test('create', () {
        expect(() => ListNode(1), returnsNormally);
        expect(ListNode(1), isA<ListNode>());
        expect(ListNode(1).val, equals(1));
      });

      test('from_empty_collection', () {
        expect(() => ListNode.of([]), returnsNormally);
        expect(ListNode.of([]), isNull);
      });

      test('from_collection', () {
        expect(() => ListNode.of([1, 2, 3]), returnsNormally);
        expect(ListNode.of([1, 2, 3]), equals([1, 2, 3]));
      });

      test('toJson', () {
        expect(() => ListNode.of([1, 2, 3])?.toJson(), returnsNormally);
        expect(ListNode.of([1, 2, 3])?.toJson(), equals([1, 2, 3]));
      });

      test('toString', () {
        expect(() => ListNode.of([1, 2, 3]).toString(), returnsNormally);
        expect(ListNode.of([1, 2, 3]).toString(), equals('(1, 2, 3)'));
      });
    });
