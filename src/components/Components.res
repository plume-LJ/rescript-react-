module MyList = {
  @react.component
  let make = (~children: React.element) => {
    <ul>
      children
    </ul>
  }
}

module StringChildren = {
  @react.component
  let make = (~children: string) => {
    <div>
      {React.string(children)}
    </div>
  }
}

module OptionalChildren = {
  @react.component
  let make = (~children: option<React.element>=?) => {
    <div>
      {switch children {
      | Some(element) => element
      | None => React.string("No children provided")
      }}
    </div>
  }
}

module NoChildren = {
  @react.component
  let make = () => {
    <div>
      {React.string("I don't accept any children params")}
    </div>
  }
}

// 你不需要使用@react.component装饰器来编写可以在 JSX 中使用的组件。
// 相反，您可以编写make带有类型的函数props，这些函数将始终作为 React 组件工作。
// 但是你会遇到 React 开发工具中组件名称为“make”的问题。
module Link = {
  type props = {href: string, children: React.element};
  
  let make = (props: props) => { 
    <a href={props.href}>
     {props.children}
    </a>
  }
}
