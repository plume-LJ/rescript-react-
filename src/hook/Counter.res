// Counter.res
@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0);

  let onClick = (_evt) => {
    setCount(prev => prev + 1)
  };

  let msg = "You clicked" ++ Belt.Int.toString(count) ++  "times"

  <div>
    <p>{React.string(msg)}</p>
    <button onClick> {React.string("Click me")} </button>
  </div>
}