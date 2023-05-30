@react.component
let make = () => {
  let clicks = React.useRef(0)

  let onClick = _ => {
    Js.log(clicks.current)
    clicks.current = clicks.current + 1
  }
  let value = clicks.current

  <div onClick> {Belt.Int.toString(value)->React.string} </div>
}
