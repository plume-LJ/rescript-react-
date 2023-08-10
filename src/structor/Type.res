let score = 10
Js.log(Belt.Int.toString(score))
let add = (a, b) => a + b
let score: int = 23
Js.log(add(2,3))
Js.log(Belt.Int.toString(score))

type circleType = None

// let myInt = 5
// let myInt: int = 5
let myInt = (5: int) + (4: int)
let add = (x: int, y: int) : int => x + y
// let drawCircle = (~radius as r: int): circleType => None

type result<'a, 'b> =
  | Ok('a)
  | Error('b)

type myPayload = {data: string}

type myPayloadResults<'errorType> = array<result<myPayload, 'errorType>>

let payloadResults: myPayloadResults<string> = [
  Ok({data: "hi"}),
  Ok({data: "bye"}),
  Error("Something wrong happened!")
]

// Recursive Types
type rec person = {
  name: string,
  friends: array<person>
}

// Mutually Recursive Types 
type rec student = {taughtBy: teacher}
and teacher = {students: array<student>}

type myType1 = int
type myType2 = float

// Type Escape Hatch
external myShadyConversion: myType1 => myType2 = "%identity"

external convertToFloat : int => float = "%identity"
let age = 10
let gpa = 2.1 +. convertToFloat(age)
@val external setTimeout: (unit => unit, int) => float = "setInterval"

let c =  setTimeout(() => {
  Js.log(2)
}, 2000)