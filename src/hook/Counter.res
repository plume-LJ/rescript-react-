// Counter.res

type action = Inc | Dec | Reset(int)
type state = {count: int}

let init = initialCount => {
  {count: initialCount}
}

let reducer = (state, action) => {
  switch action {
  | Inc => {count: state.count + 1}
  | Dec => {count: state.count - 1}
  | Reset(count) => init(count)
  }
}

@react.component
let make = (~initialCount: int) => {
  let (state, dispatch) = React.useReducerWithMapState(
    reducer,
    initialCount,
    init,
  )

  <>
    {React.string("Count:" ++ Belt.Int.toString(state.count))}
    <button onClick={_ => dispatch(Dec)}> {React.string("-")} </button>
    <button onClick={_ => dispatch(Inc)}> {React.string("+")} </button>
  </>
}
