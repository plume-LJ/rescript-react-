// Import nodejs' path.dirname
@module("path") external dirname: string => string = "dirname"
let root = dirname("/User/github") // returns "User"
