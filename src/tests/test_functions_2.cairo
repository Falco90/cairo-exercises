use cairo_exercises::ex_functions::exercise_two;

#[test]
fn test_ex_two() {
    assert(exercise_two() == (30, 50), 'Should be (30, 50)!')
}
