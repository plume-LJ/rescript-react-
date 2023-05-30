let element = <h1> {React.string("Hello World")} </h1>
let wrapChildren = (children: React.element) => {
  <div>
    <h1> {React.string("Overview")} </h1>
    children
  </div>
}

let element1 = wrapChildren(element)

let greeting = React.string("Hello ")
let name = React.string("Stranger")
let s = React.string("Hello") // new element representing "Hello"
let i = React.int(1) // new element representing "1"
let f = React.float(1.0) // new element representing "1.0"

// element is also of type React.element
let element2 =
  <div className="myElement">
    greeting
    name
  </div>

let element3 = React.array([s, i, f, React.string("element 4")])

let name = Some("Andrea")

let element4 = switch name {
| Some(name) => <div> {React.string("Hello " ++ name)} </div>
| None => React.null
}

type props = {name: string}

let render = (myComp: props => React.element) => {
  <div> {React.createElement(myComp, {name: "Franz"})} </div>
}

let render1 = (renderMyComp: (~name: string) => React.element) => {
  <div> {renderMyComp(~name="Franz")} </div>
}

type props1 = {title: string, children: React.element}

let render2 = (article: props1 => React.element) => {
  let children = [React.string("Introduction"), React.string("Body")]

  let props = {title: "Article #1", children: React.null}

  {React.createElementVariadic(article, props, children)}
}

let element5 = ReactDOM.createDOMElementVariadic("div", ~props={className: "card"}, [])
let original = <div className="hello" />

let clone = React.cloneElement(original, {"className": "world", "data-name": "some name"})
