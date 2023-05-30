// File.res

// will be named `File` in dev tools
// @react.component
// let make = () => React.string("2")

// will be named `File$component` in dev tools
@react.component
let component = () => <div> {React.string("file")} </div>
React.setDisplayName(component, "Test1")

module Nested = {
  // will be named `File$Nested` in dev tools
  @react.component
  let make = () => React.string("file")
  React.setDisplayName(make, "Test2")
}
