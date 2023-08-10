let rec neverTerminate = () => neverTerminate()

// Recursively check every item on the list until one equals the `item`
// argument. If a match is found, return `true`, otherwise return `false`
let rec listHas = (list, item) =>
  switch list {
  | list{} => false
  | list{a, ...rest} => a === item || listHas(rest, item)
  }
let c = listHas(list{1, 2, 3}, 2)

let rec callSecond = () => callFirst()
and callFirst = () => callSecond()

let c = callSecond()
Js.log(c)