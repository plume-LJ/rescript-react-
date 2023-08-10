let render = (myColor: [#red | #green | #blue]) => {
  switch myColor {
  | #blue => Js.log("Hello blue!")
  | #red
  | #green => Js.log("Hello other colors")
  }
}

render(#green)

type color = [#red | #green | #blue]

let render = myColor => {
  switch myColor {
  | #blue => Js.log("Hello blue!")
  | #green => Js.log("Hello green!")
  // works!
  | #yellow => Js.log("Hello yellow!")
  }
}