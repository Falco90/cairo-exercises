use cairo_exercises::ex_enums::{exercise_two, Command};

#[test]
fn test_ex_2() {
    let commands = exercise_two();

    match *commands.at(0) {
        Command::Sit => { panic!("Should run, not sit!"); },
        Command::Walk(distance) => { panic!("Should run, not walk!"); },
        Command::Run(distance) => { assert!(distance == 10, "Should run 10 meters!"); },
        Command::Jump((distance, height)) => { panic!("Should run not jump"); }
    }
    match *commands.at(1) {
        Command::Sit => { panic!("Should jump, not sit!"); },
        Command::Walk(distance) => { panic!("Should jump, not walk!"); },
        Command::Run(distance) => { panic!("Should jump, not run") },
        Command::Jump((
            distance, height
        )) => {
            assert!(distance == 6_u8, "Distance should be 6 meters!");
            assert!(height == 3_u8, "Height should be 3 meters!");
        }
    }
    match *commands.at(2) {
        Command::Sit => { panic!("Should run, not sit!"); },
        Command::Walk(distance) => { assert!(distance == 5, "Should walk 5 meters!") },
        Command::Run(distance) => { panic!("Should walk not run!"); },
        Command::Jump((distance, height)) => { panic!("Should walk, not jump!"); }
    }
}
