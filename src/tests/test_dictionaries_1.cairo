use cairo_exercises::ex_dictionaries::exercise_one;

#[test]
fn test_ex_1() {
    let mut names: Felt252Dict<felt252> = exercise_one();
    assert(names.get('Vitalik') == 'Buterin', 'Should have value Buterin');
}