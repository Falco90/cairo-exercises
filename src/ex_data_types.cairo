// Excercise 1: Make the mathematical addition work by modifying the code.
fn exercise_one() -> u16 {
    // Only modify the 2 lines below. Don't write any new lines of code.
    let x = 5_u16;
    let y: u16 = 300;
    // Don't modify the code below this line.
    let sum: u16 = x + y;
    sum
}

// Exercise 2: take the values representing food from the 'random_elements' tuple and store them in a new tuple variable called 'food'.
fn exercise_two() -> (felt252, felt252) {
    let random_elements = (100, 'sushi', 1, true, 'pizza', 'computer');
    // Write your code below this line. Don't modify the code above this line.
    let (a, b, c, d, e, f) = random_elements;

    let food = (b, e);

    // Don't modify the code below this line.
    food
}
