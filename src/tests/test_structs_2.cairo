use cairo_exercises::ex_structs::exercise_two;

#[test]
fn test_ex_2() {
    assert(exercise_two() == ('Kakashi', 0829876224, 'kakashi@konoha.com'), 'Returned variables not correct!');
}
