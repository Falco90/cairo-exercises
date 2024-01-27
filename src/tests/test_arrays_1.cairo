use cairo_exercises::ex_arrays::exercise_one;

#[test]
fn test_ex_1() {
    let mut arr = array![1, 2, 3, 4, 5];
    let returned_array = exercise_one(ref arr);
    assert(*returned_array.at(0) == 4, 'First value should be 4');
    assert(*returned_array.at(1) == 5, 'Second value should be 5');
    assert(*returned_array.at(2) == 6, 'Third value should be 6');
}