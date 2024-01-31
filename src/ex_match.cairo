use core::array::ArrayTrait;
use debug::PrintTrait;
// Exercise one: In a fantasy role-playing game you can create a character by selecting a class. The amount of starting health points of your character is determined by the chosen class. Make exercise_one return the correct health points of the character by using a match. Fighters should have 200 health, Wizards should have 100 health and Rogues should have 150 health.

enum Class {
    Fighter,
    Wizard,
    Rogue,
}

fn exercise_one(character: Class) -> u32 {
    match character {
        Class::Fighter => 200,
        Class::Wizard => 100,
        Class::Rogue => 150
    }
}

// Exercise two: We have a box of fruits, represented by an array. We want to take the fruits outside the box one by one and put them in our picnic basket, except for the sour mangos. Return the picnic basket in exercise_two.

#[derive(Copy, Drop, PartialEq)]
enum Taste {
    Sweet,
    Sour
}

#[derive(Copy, Drop, PartialEq)]
enum Fruit {
    Banana,
    Apple: Taste,
    Mango: Taste
}

fn exercise_two(ref box: Array<Fruit>) -> Array<Fruit> {
    // Don't modify the line below
    let mut picnic_basket: Array<Fruit> = ArrayTrait::new();

    // Write your code here
    let mut counter: u32 = 0;

    loop {
        match box.pop_front() {
            Option::Some(fruit) => {
                match fruit {
                    Fruit::Banana => {
                        picnic_basket.append(fruit);
                    },
                    Fruit::Apple => { picnic_basket.append(fruit); },
                    Fruit::Mango(taste) => {
                        match taste {
                            Taste::Sweet => { picnic_basket.append(fruit); },
                            Taste::Sour => {}
                        }
                    }
                }
            },
            Option::None => { break; }
        };

        counter += 1;
    };

    // Don't modify the line below
    picnic_basket
}
