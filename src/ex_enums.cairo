// Exercise one: You are recruiting two new member for your band, a drums player and a bass player. Two candidate named 'Colin' and 'Phil' show up for audition and you accept them into the band. Colin plays bass, and Phil plays drums. Make the function return Colin and Phil as BandMembers.

#[derive(Copy, Drop)]
enum Instrument {
    Guitar,
    Drums,
    Bass,
    Violin,
}

#[derive(Drop, Copy)]
struct BandMember {
    name: felt252,
    instrument: Instrument
}

fn exercise_one() -> (BandMember, BandMember) {
    let colin = BandMember { name: 'Colin', instrument: Instrument::Bass};
    let phil = BandMember { name: 'Phil', instrument: Instrument::Drums};

    (colin, phil)
}


// Exercise two: You are controlling a video game character. You can make the character jump from one platform to the next by rapidly executing a series of command. To gain speed, the character has to run 10 meters to the edge, then has to jump a distance of 6 meters and a height of 3 meters to reach the other side. Finally the character has to walk 5 meters to maintain a safe distance from the edge. Store the commands in an array in the correct order, then make the function return the array.

#[derive(Drop, Copy)]
enum Command {
    Sit,
    Walk: u8,
    Run: u8,
    Jump: (u8, u8)
}

fn exercise_two() -> Array<Command> {
    let mut commands: Array<Command> = ArrayTrait::new();
    commands.append(Command::Run(10));
    commands.append(Command::Jump((6, 3)));
    commands.append(Command::Walk(5));

    commands
}