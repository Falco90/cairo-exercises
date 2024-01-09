use cairo_exercises::ex_dictionaries::exercise_two;

#[test]
fn test_ex_2() {
    let mut lottery_numbers: Felt252Dict<u32> = Default::default();
    lottery_numbers.insert('Alex', 12345);
    lottery_numbers.insert('Maria', 11337);

    let (alex_number, maria_number) = exercise_two(ref lottery_numbers);

    assert(alex_number == 12345, 'Alex his number is not correct' );
    assert(maria_number == 11337, 'Maria her number is not correct' );
}