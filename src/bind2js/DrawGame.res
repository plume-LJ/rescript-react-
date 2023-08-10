@module("./MyGame")
external draw: (~x: int, ~y: int, ~border: bool=?, unit) => unit = "draw"

draw(~x=10, ~y=20, ~border=true, ())
draw(~x=10, ~y=20, ())
