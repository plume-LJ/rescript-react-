// @genType.import(("array"))
@genType.import("Js.Array2")
// let arr = ["hello", "world", "how are you"]
let arr = [1, 2, 3, 4, 5]
// Js.log(arr[5])
// let firstItem = arr[0] // "hello"

// myArray[0] = "hey" // now ["hey", "world", "how are you"]
// let a = Js.Array.from("2323")
// let pushedValue = Js.Array2.push(myArray, "bye")

// Js.log(arr[0])
let a = Js.Array.unsafe_get(arr, 3)
Js.log(a)
// Js.log(arr |> Js.Array2.unsafe_get(2))