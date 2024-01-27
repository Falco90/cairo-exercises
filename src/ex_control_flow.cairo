// Exercise one: Modify the function to take a parameter of type u32. If the argument provided to the function is a number below 5 return the text 'Number is below 5'. If the number is 5 or higher return the text 'Number is 5 or higher'.

fn exercise_one(x: u32) -> felt252 {
    if x < 5 {
        'Number is below 5'
    } else {
        'Number is 5 or higher'
    }
}

// Exercise two: In the function below make the loop iterate 7 times. After the fifth iteration, return the value of counter multiplied by 10, assign it to a variable of type u32, and make the function return that variable.

fn exercise_two() -> u32 {
    let mut counter = 0;

    let result: u32 = loop {
        if counter == 7 {
            break counter * 10;
        }

        counter += 1;
    };

    result
}