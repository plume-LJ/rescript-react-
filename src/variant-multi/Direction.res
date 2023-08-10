type direction = [ #UP | #DOWN | #LEFT | #RIGHT ]
@module("./direction.ts") external myDirection: direction = "myDirection"

let c = myDirection

Js.log(c)

// Only #Red allowed. Closed.
let basic: [#Red | #Blue] = #Red

// May contain #Red, or any other value. Open
// here, foreground will actually be inferred as [> #Red | #Green]
let foreground: [> #Red] = #Green

// The value must be, at most, one of #Red or #Blue
// Only #Red and #Blue are valid values
let background: [< #Red | #Blue] = #Red