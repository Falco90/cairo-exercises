use cairo_exercises::ex_control_flow::exercise_one;

#[test]
fn test_ex_1() {
    assert(exercise_one(4) == 'Number is below 5', 'Number is not below 5');
    assert(exercise_one(6) == 'Number is 5 or higher', 'Number is not 5 or higher');
}
