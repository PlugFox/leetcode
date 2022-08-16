import 'package:leetcode/src/problem/move_zeroes.283.dart';
import 'package:test/test.dart';

void main() => group('move_zeroes.283', () {
      final moveZeroes = MoveZeroes();
      List<int> f(List<int> list) {
        moveZeroes(list);
        return list;
      }

      test('f([0,1,0,3,12])', () {
        expect(f([0, 1, 0, 3, 12]), equals([1, 3, 12, 0, 0]));
      });

      test('f([0,4,0,0,2,1,0])', () {
        expect(f([0, 4, 0, 0, 2, 1, 0]), equals([4, 2, 1, 0, 0, 0, 0]));
      });

      test('f([1, 0])', () {
        expect(f([1, 0]), equals([1, 0]));
      });

      test('f([0])', () {
        expect(f([0]), equals([0]));
      });
    });
