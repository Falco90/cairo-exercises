// Exercise one: create a dictionary that stores first names as keys, and surnames as values. Insert Vitalik Buterin into your dictionary. Then make the exercise_one function return the dictionary.

fn exercise_one() -> Felt252Dict<felt252> {
    let mut names: Felt252Dict<felt252> = Default::default();
    names.insert('Vitalik', 'Buterin');

    names
}

// Exercise two: you are given the dictionary 'lottery_numbers'. Find out the lottery numbers of Alex and Maria and make the exercise_two function return the lottery numbers.

fn exercise_two(ref lottery_numbers: Felt252Dict<u32>) -> (u32, u32) {
    let alex_number = lottery_numbers.get('Alex');
    let maria_number = lottery_numbers.get('Maria');
    (alex_number, maria_number)
}
