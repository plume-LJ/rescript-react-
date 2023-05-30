// Button.res
module Label = {
  @react.component
  let make = (~title: string) => {
    <div className="myLabel"> {React.string(title)} </div>
  }
}
@react.component
let make = (~onClick, ~msg, ~children) => {
  <div onClick>
    <Label title={msg} />
    children
  </div>
}