// FancyButton.res

@send external focus: Dom.element => unit = "focus"
@send external blur: Dom.element => unit = "blur"

module FancyInput = {
  @react.component
  let make = React.forwardRef((~className=?, ~children, ref) => {
    let input = React.useRef(Js.Nullable.null)
    let blur = () => {
      input.current->Js.Nullable.toOption->Belt.Option.forEach(input => input->blur)
    }
    let focus = () => {
      input.current->Js.Nullable.toOption->Belt.Option.forEach(input => input->focus)
    }

    React.useImperativeHandle0(ref, () => {"focus": focus, "blur": blur})

    <div>
      <input type_="text" ?className ref={ReactDOM.Ref.domRef(input)} />
      children
    </div>
  })
}

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
