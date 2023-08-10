let myList = list{1, 2, 3}
let anotherList = list{0, ...myList}
let message =
  switch myList {
  | list{} => "This list is empty"
  | list{a, ...rest} => "The head of the list is the string " ++ Js.Int.toString(a)++ Js.Array.toString(Js.List.toVector(rest))
  }
// 注意，list{a, ...b, ...c} 的语法是错误的