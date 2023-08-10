@module("MyGame") external drawCat: unit => unit = "draw"
@module("MyGame") external drawDog: (~giveName: string) => unit = "draw"
@module("MyGame") external draw: (string, ~useRandomAnimal: bool) => unit = "draw"

@val
external padLeft: (
  string,
  @unwrap [
    | #Str(string)
    | #Int(int)
  ])
  => string = "padLeft"
let c = padLeft("Hello World", #Int(4))
let b = padLeft("Hello World", #Str("Message from ReScript: "))
Js.log(c ++ b)

@module("fs")
external readFileSync: (
  ~name: string,
  @string [
    | #utf8
    | @as("ascii") #useAscii
  ],
) => string = "readFileSync"

let c = readFileSync(~name="xx.txt", #useAscii)

@val
external testIntType: (
  @int [
    | #onClosed
    | @as(20) #onOpen
    | #inBinary
  ])
  => int = "testIntType"
let a = testIntType(#inBinary)

