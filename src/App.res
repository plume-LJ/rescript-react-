// src/App.res
module MyList = Components.MyList
module StringChildren = Components.StringChildren
module OptionalChildren = Components.OptionalChildren
module NoChildren = Components.NoChildren
module Link = Components.Link
@react.component
let make = () => {
  let visitorCount = 5
  // let name = Some("Andrea")
  // let input = <input type_="text" />

  <div>
    <React.StrictMode>
      <Greeting />
      <Article title="ReScripters" visitorCount>
        {React.string("dom")}
        {React.cloneElement(
          <input type_="text" />,
          {"className": "world", "aria-label": "test", "data-name": "some name"},
        )}
        {ReactDOM.createDOMElementVariadic(
          "div",
          ~props={className: "card", ariaLabel: "test", data: "2"},
          [],
        )}
      </Article>
      <MyList>
        <li> {React.string("Item 1")} </li>
        <li> {React.string("Item 2")} </li>
      </MyList>
      <StringChildren> "sdsd" </StringChildren>
      <OptionalChildren> {React.string("sdsd")} </OptionalChildren>
      <OptionalChildren />
      // <NoChildren> "sdsd" </NoChildren>
      <NoChildren />
      <Button onClick={e => {Js.log(e)}} msg="sdsd"> {React.int(123)} </Button>
      <Link href="/docs"> {React.string("Docs")} </Link>
      <File.component />
      <File.Nested />
      <Test />
    </React.StrictMode>
  </div>
}
