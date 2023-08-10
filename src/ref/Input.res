// TextInputWithFocusButton.res

@send external focus: Dom.element => unit = "focus"

@react.component
let make = () => {
  let inputEl = React.useRef(Js.Nullable.null)

  let onClick = _ => {
    inputEl.current
    ->Js.Nullable.toOption
    ->Belt.Option.forEach(input => input->focus)
  }

  <>
    <input ref={ReactDOM.Ref.domRef(inputEl)} type_="text" />
    <button onClick> {React.string("Focus the input")} </button>
  </>
}
