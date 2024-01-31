use core::option::OptionTrait;
use cairo_exercises::ex_match::{exercise_two, Fruit, Taste};

#[test]
fn test_ex_2() {
    let mut box: Array<Fruit> = ArrayTrait::new();
    box.append(Fruit::Banana);
    box.append(Fruit::Mango(Taste::Sour));
    box.append(Fruit::Apple(Taste::Sweet));
    box.append(Fruit::Apple(Taste::Sour));
    box.append(Fruit::Mango(Taste::Sour));
    box.append(Fruit::Mango(Taste::Sweet));
    box.append(Fruit::Banana);

    let picnic_basket = exercise_two(ref box);
    let item_1 = *picnic_basket.at(0);
    let item_2 = *picnic_basket.at(1);
    let item_3 = *picnic_basket.at(2);
    let item_4 = *picnic_basket.at(3);
    let item_5 = *picnic_basket.at(4);

    assert!(item_1 == Fruit::Banana, "First item should be banana");
    assert!(item_2 == Fruit::Apple(Taste::Sweet), "Second item should be sweet apple");
    assert!(item_3 == Fruit::Apple(Taste::Sour), "Third item should be sour apple");
    assert!(item_4 == Fruit::Mango(Taste::Sweet), "Fourth item should be sweet mango");
    assert!(item_5 == Fruit::Banana, "Fifth item should be banana");
}