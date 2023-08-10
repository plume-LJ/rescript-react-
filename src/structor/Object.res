// type person = {age: int, name: string}

type person = {"age": int, "name": string}

let me = {
  "age": 5,
  "name": "Big ReScript",
}

module AA = {
  // Module contents
  type person = {"age": int}

  let me = {
    "age": "hello!", // age is a string. No error.
  }

  // let me1: person = {
  //   "age": "hello!", // age is a string. No error.
  // }
}

let age = me["age"]


type student = {
  @set "age": int,
  @set "name": string,
}
@module("MyJSFile") external student1: student = "student1"

student1["name"] = "Mary"


type point2d = {
  "x": float,
  "y": float,
}
type point3d = {
  ...point2d,
  "z": float,
}

let myPoint: point3d = {
  "x": 1.0,
  "y": 2.0,
  "z": 3.0,
}