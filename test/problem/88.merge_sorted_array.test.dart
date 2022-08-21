import 'package:leetcode/src/problem/88.merge_sorted_array.dart';
import 'package:test/test.dart';

void main() => group('merge_sorted_array', () {
      final f1 = SolutionV1().merge;
      final f2 = SolutionV2().merge;

      test('f([1,2,3,0,0,0], 3, [2,5,6], 3)', () {
        {
          final list = [1, 2, 3, 0, 0, 0];
          f1(list, 3, [2, 5, 6], 3);
          expect(list, equals([1, 2, 2, 3, 5, 6]));
        }
        {
          final list = [1, 2, 3, 0, 0, 0];
          f2(list, 3, [2, 5, 6], 3);
          expect(list, equals([1, 2, 2, 3, 5, 6]));
        }
      });

      test('f([1], 1, [], 0)', () {
        {
          final list = [1];
          f1(list, 1, [], 0);
          expect(list, equals([1]));
        }
        {
          final list = [1];
          f2(list, 1, [], 0);
          expect(list, equals([1]));
        }
      });

      test('f([0], 0, [1], 1)', () {
        {
          final list = [0];
          f1(list, 0, [1], 1);
          expect(list, equals([1]));
        }
        {
          final list = [0];
          f2(list, 0, [1], 1);
          expect(list, equals([1]));
        }
      });
    });
