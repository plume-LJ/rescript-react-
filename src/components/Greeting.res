// src/element-jsx/Greeting.res
let element = React.string("Hello ReScripters!")

@react.component
let make = () => {
  <div> element </div>
}