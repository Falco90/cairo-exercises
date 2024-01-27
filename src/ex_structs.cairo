// Exercise one: Fill out the Character struct so that it contains level of type u8, class of type felt252 and name of type felt252. Instantiate a character with the name Jon, of class 'fighter' and of level 1. Make the exercise_one function return the character that you instantiated.

// Write your Character struct here.

#[derive(Drop)]
struct Character {
    level: u8,
    name: felt252,
    class: felt252
}

fn exercise_one() -> Character {
    Character { level: 1, name: 'Jon', class: 'fighter' }
}

// Exercise two: Destructure the struct to get the name, phone_number and email of the member. Then return them in a tuple.

#[derive(Drop)]
struct Member {
    id: u32,
    name: felt252,
    phone_number: felt252,
    email: felt252,
    premium: bool
}

fn exercise_two() -> (felt252, felt252, felt252) {
    // Don't change the contents of the struct below
    let member = Member {
        id: 24,
        name: 'Kakashi',
        phone_number: 0829876224,
        email: 'kakashi@konoha.com',
        premium: true
    };


    (member.name, member.phone_number, member.email)

}
