type myResponse =
  | Yes
  | No
  | PrettyMuch

let areYouCrushingIt = Yes
let areYouCrushingIt1 = No
let areYouCrushingIt2 = PrettyMuch

type animal = Dog | Cat | Bird
let pet: Zoo.animal = Dog // preferred
// or
let pet2 = Zoo.Dog