type readline

@send
external on: (
    readline,
    @string [
      | #close(unit => unit)
      | #line(string => unit)
    ]
  )
  => readline = "on"

// let register = rl =>
//   rl
//   ->on(#close(event => ()))
//   ->on(#line(line => Js.log(line)));
