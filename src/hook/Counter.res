// Counter.res
module Document = {
  type t
  @val external document: t = "document"
  @set external setTitle: (t, string) => unit = "title"
}

@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)
  let (state, setState) = React.Uncurried.useState(_ => 0)

  // React.useEffect(() => {
  //   open Document
  //   document->setTitle(`You clicked ${Belt.Int.toString(count)} times!`)
  //   None
  // })

  React.useEffect1(() => {
    open Document
    document->setTitle(`You clicked ${Belt.Int.toString(count)} times!`)
    None
  }, [count])

  let onClick = _evt => {
    setCount(prev => prev + 1)
    setState(.prev => prev + 1)
  }

  let msg = "You clicked" ++ Belt.Int.toString(count) ++ "times"
  let msg1 = "You clicked" ++ Belt.Int.toString(state) ++ "times"

  <div>
    <p> {React.string(msg)} </p>
    <p> {React.string(msg1)} </p>
    <button onClick> {React.string("Click me")} </button>
  </div>
}
