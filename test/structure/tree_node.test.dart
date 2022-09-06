import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() => group('tree_node', () {
      test('create', () {
        expect(() => TreeNode(1), returnsNormally);
        expect(TreeNode(1), isA<TreeNode>());
        expect(TreeNode(1).val, equals(1));
      });

      test('of', () {
        expect(() => TreeNode.of([1, 2, 3]), returnsNormally);
        expect(
          TreeNode.of([])?.toList(),
          isNull,
        );
        expect(
          TreeNode.of([0])?.toList(),
          equals([0]),
        );
        expect(
          TreeNode.of([1, 2, 3])?.toList(),
          equals([1, 2, 3]),
        );
        expect(
          TreeNode.of([1, null, 2, 3])?.toList(),
          equals([1, null, 2, 3]),
        );
        expect(
          TreeNode.of([5, 4, 7, 3, null, 2, null, -1, null, 9])?.toList(),
          equals([5, 4, 7, 3, null, 2, null, -1, null, 9]),
        );
      });

      test('toJson', () {
        expect(() => TreeNode.of(<int>[1, 2, 3])?.toJson(), returnsNormally);
        expect(TreeNode.of(<int>[1, 2, 3])?.toJson(), isA<Map<String, Object?>>());
      });

      test('toString', () {
        expect(() => TreeNode.of(<int>[1, 2, 3]).toString(), returnsNormally);
        expect(TreeNode.of(<int>[1, 2, 3])?.toString(), isA<String>());
      });
    });
