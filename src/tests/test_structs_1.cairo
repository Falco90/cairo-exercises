use cairo_exercises::ex_structs::exercise_one;

#[test]
fn test_ex_1() {
    assert(exercise_one().name == 'Jon', 'Name should be Jon!');
    assert(exercise_one().level == 1, 'Level should be 1!');
    assert(exercise_one().class == 'fighter', 'Class should be fighter!');
}
