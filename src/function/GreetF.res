let greet = (name) => "Hello " ++ name
Js.log(greet("world!")) // "Hello world!"
let add = (x, y, z) => x + y + z
let c = add(1, 2, 3) // 6

let greetMore = (name) => {
  let part1 = "Hello"
  part1 ++ " " ++ name
}

let cc = greetMore("dsdsd")
Js.log(cc)