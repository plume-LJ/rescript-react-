let addCoordinates = (x, y) => {
  x + y
}
// ...
let c = addCoordinates(5, 6) // which is x, which is y?
let addCoordinates = (~x, ~y) => {
  // use x and y here
  x - y
}
// ...
let cc = addCoordinates(~x=5, ~y=6)
let dd = addCoordinates(~y=6, ~x=5)

let drawCircle = (~radius as r, ~color as c) => {
  // setColor(c)
  // startAt(r, r)
  // ...
  Js.log(r)
  Js.log(c)
}

drawCircle(~radius=10, ~color="red")

// radius can be omitted
// let drawCircle = (~color, ~radius=?, ()) => {
//   // setColor(color)
//   Js.log(color)
//   switch radius {
//   | None => Js.log(radius) // startAt(1, 1)
//   | Some(r_) => Js.log(r_) // startAt(r_, r_)
//   }
// }

let drawCircle: (~color: Color.color, ~radius: int=?, unit) => unit = (
  ~color: Color.color,
  ~radius: option<int>=?,
  (),
) => {
  // setColor(color)
  Js.log(color)
  switch radius {
  | None => Js.log(radius) // startAt(1, 1)
  | Some(r_) => Js.log(r_) // startAt(r_, r_)
  }
}
let payloadRadius = None
let color = #blue
let result =
  switch payloadRadius {
  | None => drawCircle(~color, ())
  | Some(r) => drawCircle(~color, ~radius=r, ())
  }
Js.log(result)
let result = drawCircle(~color, ~radius=?payloadRadius, ())
