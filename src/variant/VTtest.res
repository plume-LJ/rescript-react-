type greeting = Hello | Goodbye
let g1 = Hello
let g2 = Goodbye

type outcome = Good | Error(string)
let o1 = Good
let o2 = Error("oops!")

type family = Child | Mom(int, string) | Dad(int)
let f1 = Child
let f2 = Mom(30, "Jane")
let f3 = Dad(32)

type person = Teacher | Student({gpa: float})
let p1 = Teacher
let p2 = Student({gpa: 99.5})

type s = {score: float}
type adventurer = Warrior(s) | Wizard(string)
let a1 = Warrior({score: 10.5})
let a2 = Wizard("Joe")

type account = Facebook(string, int) // 2 arguments
type account2 = Instagram((string, int)) // 1 argument - happens to be a 2-tuple

let aa1 = Facebook("2", 2)
let aa2 = Instagram(("2", 2))
