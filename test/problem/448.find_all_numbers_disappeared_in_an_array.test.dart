import 'package:leetcode/src/problem/448.find_all_numbers_disappeared_in_an_array.dart';
import 'package:test/test.dart';

void main() => group('find_all_numbers_disappeared_in_an_array', () {
      final f = Solution().findDisappearedNumbers;

      test('f([1,2])', () {
        expect(f([1, 2]), isEmpty);
      });

      test('f([4,3,2,7,8,2,3,1])', () {
        expect(f([4, 3, 2, 7, 8, 2, 3, 1]), containsAll(<int>[5, 6]));
      });

      test('f([1,1])', () {
        expect(f([1, 1]), containsAll(<int>[2]));
      });
    });
