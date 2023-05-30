// src/App.res
@react.component
let make = () => {
  let visitorCount = 5
  <div>
    <Greeting />
    <Article title="ReScripters" visitorCount>
      {React.string("dom")}
    </Article>
  </div>
}