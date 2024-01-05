use core::array::ArrayTrait;
// Exercise one: given the Array [1, 2, 3, 4, 5] as input. modify the array in such a way that it becomes this: [4, 5, 6].

fn exercise_one(ref arr: Array<u32>) -> Span<u32> {
    arr.pop_front();
    arr.pop_front();
    arr.pop_front();
    arr.append(6);

    // Don't modify the code below this line
    arr.span()
}

// Exercise two: given the array ['tomato', 'blue', 'yellow', 'pizza', 'red', 'cheese'], modify the array in such a way that only the colors remain.
fn exercise_two(ref arr: Array<felt252>) -> Span<felt252> {
    arr.pop_front();
    arr.pop_front();
    arr.pop_front();
    arr.pop_front();
    arr.pop_front();
    arr.pop_front();
    arr.append('blue');
    arr.append('yellow');
    arr.append('red');


    // Don't modify the code below this line
    arr.span()
}