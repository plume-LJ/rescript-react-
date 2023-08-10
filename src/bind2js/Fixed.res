@val
external processOnExit: (@as("exit") _, int => unit) => unit = "process.on"

processOnExit(exitCode => Js.log("error code: " ++ Js.Int.toString(exitCode)))
// 同时使用 @as("exit") 和占位符 _ 参数，表示你想让第一个参数编译为字符串 
// "exit"。你也可以一起使用as 和 JSON 字面量，
// 例如：@as(JSON`true`)，@as(JSON`{"name":"John"}`)等。
