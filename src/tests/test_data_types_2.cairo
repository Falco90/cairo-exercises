use cairo_exercises::ex_data_types::exercise_two;

#[test]
fn test_ex_2() {
    assert(exercise_two() == ('sushi', 'pizza'), 'Should be the right food!');
}
