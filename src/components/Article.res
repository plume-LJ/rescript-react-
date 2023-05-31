// src/Article.res
@react.component
let make = (~title: string, ~visitorCount: int, ~children: React.element) => {
  let visitorCountMsg = "You are visitor number: " ++ Belt.Int.toString(visitorCount);
  <div>
    <Theme />
    <div> {React.string(title)} </div>
    <div> {React.string(visitorCountMsg)} </div>
    children
  </div>
}
