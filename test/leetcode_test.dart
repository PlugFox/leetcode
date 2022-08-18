import 'package:test/test.dart';

import 'problem/1051.height_checker.test.dart' as height_checker;
import 'problem/1089.duplicate_zeros.test.dart' as duplicate_zeros;
import 'problem/1299.replace_elements_with_greatest_element_on_right_side.test.dart'
    as replace_elements_with_greatest_element_on_right_side;
import 'problem/1342.number_of_steps_to_reduce_a_number_to_zero.test.dart'
    as number_of_steps_to_reduce_a_number_to_zero;
import 'problem/1346.check_if_n_and_its_double_exist.test.dart' as check_if_n_and_its_double_exist;
import 'problem/1480.running_sum_of_1d_array.test.dart' as running_sum_of_1d_array;
import 'problem/1672.richest_customer_wealth.test.dart' as richest_customer_wealth;
import 'problem/2235.add_two_integers.test.dart' as add_two_integers;
import 'problem/26.remove_duplicates_from_sorted_array.test.dart' as remove_duplicates_from_sorted_array;
import 'problem/27.remove_element.test.dart' as remove_element;
import 'problem/283.move_zeroes.test.dart' as move_zeroes;
import 'problem/300.longest_increasing_subsequence.test.dart' as longest_increasing_subsequence;
import 'problem/383.ransom_note.test.dart' as ransom_note;
import 'problem/412.fizz_buzz.test.dart' as fizz_buzz;
import 'problem/485.max_consecutive_ones.test.dart' as max_consecutive_ones;
import 'problem/876.middle_of_the_linked_list.test.dart' as middle_of_the_linked_list;
import 'problem/88.merge_sorted_array.test.dart' as merge_sorted_array;
import 'problem/905.sort_array_by_parity.test.dart' as sort_array_by_parity;
import 'problem/977.squares_of_a_sorted_array.test.dart' as squares_of_a_sorted_array;
import 'structure/list_node.test.dart' as list_node_test;

void main() {
  group('structure', list_node_test.main);
  group('problems', () {
    max_consecutive_ones.main();
    add_two_integers.main();
    richest_customer_wealth.main();
    running_sum_of_1d_array.main();
    number_of_steps_to_reduce_a_number_to_zero.main();
    middle_of_the_linked_list.main();
    ransom_note.main();
    fizz_buzz.main();
    longest_increasing_subsequence.main();
    merge_sorted_array.main();
    duplicate_zeros.main();
    squares_of_a_sorted_array.main();
    remove_element.main();
    remove_duplicates_from_sorted_array.main();
    check_if_n_and_its_double_exist.main();
    replace_elements_with_greatest_element_on_right_side.main();
    move_zeroes.main();
    sort_array_by_parity.main();
    height_checker.main();
  });
}
