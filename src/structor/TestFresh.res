type coordinates<'a> = ('a, 'a, 'a)

let a: coordinates<int> = (10, 23, 20)
let b: coordinates<float> = (10.5, 20.5, 20.5)
Js.log("2019-11-10" |> Js.String.split("-"))
Js.log(a)
type point2D<'a> = ('a, 'a)

let a: point2D<float> = (2.0, 2.0)
let displayGreeting = true
if displayGreeting {
  let message = "Enjoying the docs so far?"
  Js.log(message)
}

let calculate = a => a + 1
let calculateSomeMore = a => a + 2

let result1 = 0
let result2 = calculate(result1)
let result3 = calculateSomeMore(result2)
let result = "hello"
Js.log(result) // prints "hello"
let result = 1
Js.log(result) // prints 1