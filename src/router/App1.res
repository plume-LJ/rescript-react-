// App.res

module User = {
  @react.component
  let make = (~id: string) => {
    <div className="myLabel"> {React.string(id)} </div>
  }
}

module Home = {
  @react.component
  let make = () => {
    <div className="myLabel"> {React.string("HOME")} </div>
  }
}

module PageNotFound = {
  @react.component
  let make = () => {
    <div className="myLabel"> {React.string("PageNotFound")} </div>
  }
}

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"user", id} => <User id />
  | list{} => <Home />
  | _ => <PageNotFound />
  }
}
