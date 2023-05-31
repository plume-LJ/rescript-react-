@react.component
let make = () => {
  let (text, setText) = React.useState(_ => "");

  let onChange = evt => {
    ReactEvent.Form.preventDefault(evt)
    let value = ReactEvent.Form.target(evt)["value"]
    setText(_prev => value);
  }

  <div>
    <input onChange value=text />
    <br />
    {React.string(text)}
  </div>
};