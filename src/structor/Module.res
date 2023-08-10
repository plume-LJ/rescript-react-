module A: {
  let b: int
} = {
  let a = 3
  let b = 4 + a
}

module AA = {
  %%private(let a = 3)
  let b = 4 + A.b + a
}
Js.log(AA.b)