// src/Test.res

let numbers = [1, 2, 3, 4, 5]

let items = Belt.Array.map(numbers, number => {
  <li key={Belt.Int.toString(number)}> {React.int(number)} </li>
})

@react.component
let make = () => {
  <div>
    {React.string("Hello World")}
    {React.array(items)}
  </div>
}
