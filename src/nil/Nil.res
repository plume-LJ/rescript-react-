@module("MyConstant") external myId: Js.Nullable.t<string> = "myId"
@module("MyIdValidator") external validate: Js.Nullable.t<string> => bool = "validate"
let personId: Js.Nullable.t<string> = Js.Nullable.return("abc123")

let result = validate(personId)

// 与 option 值互相转换
let a = Js.Nullable.fromOption(Option.licenseNumber) // 将一个 option 转换到 Js.Nullable.t。

let b = Js.Nullable.toOption(Js.Nullable.return("2323")) // 做相反的转换。