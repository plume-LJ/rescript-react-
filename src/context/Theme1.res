// App.res
module ThemeContext = {
  let context = React.createContext("light")

  module Provider = {
    let make = React.Context.provider(context)
  }
}

module ThemedButton = {
  @react.component
  let make = () => {
    let theme = React.useContext(ThemeContext.context)
    let (color, backgroundColor) = switch theme {
    | "dark" => ("#ffffff", "#222222")
    | "light" | _ => ("#000000", "#eeeeee")
    }

    let style = ReactDOMStyle.make(~color, ~backgroundColor, ())

    <button style> {React.string("I am a styled button!")} </button>
  }
}

module Toolbar = {
  @react.component
  let make = () => {
    <div> <ThemedButton /> </div>
  }
}

@react.component
let make = () => {
  <ThemeContext.Provider value="dark">
    <div> <Toolbar /> </div>
  </ThemeContext.Provider>
}
