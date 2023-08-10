// Example.res

let me: School.person = {age: 20, name: "Big ReScript"}
/* or */
let me2 = {School.age: 20, School.name: "Big ReScript"}
let name = me.name
let meNextYear = {...me, age: me.age + 1}

// Mutable
type person = {
  name: string,
  mutable age: int,
}

let baby = {name: "Baby ReScript", age: 5}
baby.age = baby.age + 1 // `baby.age` is now 6. Happy birthday!

type person1 = {
  age: int,
  name?: string,
}

// let me = {
//   age: 5,
//   name: "Big ReScript",
// }

let friend = {
  age: 7,
}

// let me = {
//   age: 123,
//   name: "Hello",
// }

// let withoutName = {
//   ...me,
//   name: "New Name",
// }

let me = {
  age: 123,
  name: "Hello",
}

let maybeName = Some("My Name")

let withoutName = {
  ...me,
  name: ?maybeName,
}

Js.log(withoutName)

let withoutName = {
  ...me,
  name: ?None,
}

let isRescript = switch me.name {
| Some("ReScript") => true
| Some(_) | None => false
}

Js.log(isRescript)

let isRescript = switch me {
| {name: "ReScript"} => true
| _ => false
}

let nameWasSet = switch me {
| {name: ?None} => false
| {name: ?Some(_)} => true
}

module PP = {
  // Module contents

  type person = {age: int, name: string}
  type monster = {age: int, hasTentacles: bool}

  let getAge = entity => entity.age

  let kraken = {age: 9999, hasTentacles: true}
  let me = {age: 5, name: "Baby ReScript"}

  let aa = getAge(kraken)
  // let bb = getAge(me) // type error!
}
