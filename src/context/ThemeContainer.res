// ThemeContainer.res
module ControlPanel = {
  @react.component
  let make = (~setDarkmode, ~darkmode) => {
    let onClick = evt => {
      ReactEvent.Mouse.preventDefault(evt)
      setDarkmode(prev => !prev)
    }

    let toggleText = "Switch to " ++ ((darkmode ? "light" : "dark") ++ " theme")

    <div> <button onClick> {React.string(toggleText)} </button> </div>
  }
}

@react.component
let make = (~content) => {
  let (darkmode, setDarkmode) = React.useState(_ => false)

  let className = darkmode ? "theme-dark" : "theme-light"

  <div className>
    <section>
      <h1> {React.string("More Infos about ReScript")} </h1> content
    </section>
    <ControlPanel darkmode setDarkmode />
  </div>
}
