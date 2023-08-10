let add = %raw("(a, b) => a + b")
%%raw("const a = 1")
@val external setTimeout: (unit => unit, int) => float = "setTimeout"
module A = {
  %%private(let b = 3)
  let c = b + 3
}
let b = 4
Js.log(A.c + b)
let message = "Timed out!"

let timer = Js.Global.setTimeout(() => Js.log(message), 1000)

// The type of document is just some random type 'a
// that we won't bother to specify
@val external document: 'a = "document"

// call a method
document["addEventListener"](."mouseup", _event => {
  Js.log("clicked!")
})

// get a property
let loc = document["location"]

// set a property
// document["location"]["href"] = "rescript-lang.org"
