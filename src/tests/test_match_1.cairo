use cairo_exercises::ex_match::{exercise_one, Class};

#[test]
fn test_ex_1() {
    let fighter_health = exercise_one(Class::Fighter);
    let wizard_health = exercise_one(Class::Wizard);
    let rogue_health = exercise_one(Class::Rogue);
    
    assert!(fighter_health == 200, "Fighter health should be 200");
    assert!(wizard_health == 100, "Fighter health should be 100");
    assert!(rogue_health == 150, "Rogue health should be 150");
}
