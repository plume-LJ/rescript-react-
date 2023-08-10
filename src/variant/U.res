type u = {name: string, password: string}
type user =
  | Number(int)
  | Id(u)

let me = Id({name: "Joe", password: "123"})
