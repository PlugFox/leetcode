import 'package:leetcode/src/problem/905.sort_array_by_parity.dart';
import 'package:test/test.dart';

void main() => group('sort_array_by_parity', () {
      final f = Solution().sortArrayByParity;

      test('f([3,1,2,4])', () {
        expect(f([3, 1, 2, 4]).take(2), containsAll(<int>[2, 4]));
        expect(f([3, 1, 2, 4]).skip(2), containsAll(<int>[3, 1]));
      });

      test('f([1,1,0,1,0,0,1])', () {
        expect(f([1, 1, 0, 1, 0, 0, 1]), containsAllInOrder(<int>[0, 0, 0, 1, 1, 1, 1]));
      });

      test('f([0])', () {
        expect(f([0]), equals([0]));
      });
    });
