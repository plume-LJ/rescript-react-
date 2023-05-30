// FancyButton.res

module FancyInput = {
  @react.component
  let make = React.forwardRef((~className=?, ~children, ref) =>
    <div>
      <input
        type_="text"
        ?className
        ref=?{Js.Nullable.toOption(ref)->Belt.Option.map(ReactDOM.Ref.domRef)}
      />
      children
    </div>
  )
}

@send external focus: Dom.element => unit = "focus"

@react.component
let make = () => {
  let input = React.useRef(Js.Nullable.null)

  let focusInput = () =>
    input.current->Js.Nullable.toOption->Belt.Option.forEach(input => input->focus)

  let onClick = _ => focusInput()

  <div>
    <FancyInput className="fancy" ref=input>
      <button onClick> {React.string("Click to focus")} </button>
    </FancyInput>
  </div>
}
