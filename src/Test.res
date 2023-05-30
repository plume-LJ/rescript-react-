// src/Test.res

type todo = {id: string, text: string}

let todos = [{id: "todo1", text: "Todo 1"}, {id: "todo2", text: "Todo 2"}]

let items = Belt.Array.map(todos, todo => {
  <li key={todo.id}> {React.string(todo.text)} </li>
})
let items1 = Belt.Array.mapWithIndex(todos, (i, todo) => {
  // Only do this if items have no stable id
  <li key={Belt.Int.toString(i)}> {React.string(todo.text)} </li>
})

type post = {id: string, title: string, content: string}

module Blog = {
  @react.component
  let make = (~posts: array<post>) => {
    let sidebar =
      <ul>
        {
          Belt.Array.map(posts, (post) => {
            <li key={post.id}>
              {React.string(post.title)}
            </li>
          })->React.array
        }
      </ul>

    let content = Belt.Array.map(posts, (post) => {
        <div key={post.id}>
          <h3>{React.string(post.title)}</h3>
          <p>{React.string(post.content)}</p>
        </div>
    });
      
      <div>
      {sidebar}
      <hr />
      {React.array(content)}
    </div>
  }
}

let posts = [
  {id: "1", title: "Hello World", content: "Welcome to learning ReScript & React!"},
  {id: "2", title: "Installation", content: "You can install reason-react from npm."}
]

let blog = <Blog posts/>

module TT = {
  @react.component
let make = () => {
  let todoList = list{
    {id: "todo1", text: "Todo 3"},
    {id: "todo2", text: "Todo 4"},
  }

  let items =
    todoList
    ->Belt.List.toArray
    ->Belt.Array.map(todo => {
      <li key={todo.id}> {React.string(todo.text)} </li>
    })

  <div> {React.array(items)} </div>
}
}

@react.component
let make = () => {
  <div>
    {React.string("Hello World")}
    {React.array(items)}
    {React.array(items1)}
    blog
    <TT />
  </div>
}

// error
// module MyComp = {
//   @react.component
//   let make = (~ref) => <input />
// }

// @react.component
// let make = () => {
//   let textInput = React.useRef(Js.Nullable.null)

//   // This will **not** work
//   <MyComp ref={ReactDOM.Ref.domRef(textInput)} />
// }
