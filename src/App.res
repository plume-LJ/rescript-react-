// src/App.res
%%raw("import './styles/main.scss'")
%%raw("import './styles/main.css'")

module MyList = Components.MyList
module StringChildren = Components.StringChildren
module OptionalChildren = Components.OptionalChildren
module NoChildren = Components.NoChildren
module Link = Components.Link
module ThemeContext = Theme.ThemeContext
@react.component
let make = () => {
  // let visitorCount = 5
  // let name = Some("Andrea")
  // let input = <input type_="text" />
  Js.log(TestFresh.result3)
  Js.log(Type.c)
  Js.log(ExtenalTTT.loc)
  Js.log(DrawGame.draw)
  // Js.log(Multiple.c)
  Js.log(Direction.c)
  
  // let a = [1,2,3]
  // let b = Js.Array2.unsafe_get(a, 5)
  // Js.log(b)
  Js.log(List.message)
  // Js.log(RecF.c)

  <ThemeContext.Provider value=ThemeContext.Dark>
    <div>
      <React.StrictMode>
        // <Greeting />
        // <Article title="ReScripters" visitorCount>
        //   {React.string("dom")}
        //   {React.cloneElement(
        //     <input type_="text" />,
        //     {"className": "world root", "aria-label": "test", "data-name": "some name"},
        //   )}
        //   {ReactDOM.createDOMElementVariadic(
        //     "div",
        //     ~props={className: "card", ariaLabel: "test", data: "2"},
        //     [],
        //   )}
        // </Article>
        // <MyList>
        //   <li> {React.string("Item 1")} </li>
        //   <li> {React.string("Item 2")} </li>
        // </MyList>
        // <StringChildren> "sdsd" </StringChildren>
        // <OptionalChildren> {React.string("sdsd")} </OptionalChildren>
        // <OptionalChildren />
        // // <NoChildren> "sdsd" </NoChildren>
        // <NoChildren />
        // <Button onClick={e => {Js.log(e)}} msg="sdsd"> {React.int(123)} </Button>
        // <Link href="/docs"> {React.string("Docs")} </Link>
        // <File.component />
        // <File.Nested />
        // <Test />
        // <AdderButton />
        // <CustomTextInput />
        // <FancyButton />
        // <FancyButtonForward />
        // <div  className={`border-1 border-black `} style={ReactDOM.Style.make(~color="#444444", ~fontSize="68px", ())} >
        //   {React.string("s")}
        // </div>
        // <StyleButton />
        <App1 />
        <Counter initialCount={2} />
        <Counter1 />
        // <FriendStatus friendId="2" />
        // <TextInput />
        <Input />
        // <ThemeContainer content={React.string("hello plume!")} />
        <TodoApp />
      </React.StrictMode>
    </div>
  </ThemeContext.Provider>
}
