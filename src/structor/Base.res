// let greeting = "Hello world!"
let multilineGreeting = "Hello
 
 world!"

let name = "Joe"

let greeting = `Hello
World
👋
${name}
`
let firstLetterOfAlphabet = 'a'

let r = %re("/b/g")
/*
&&：逻辑与

||：逻辑或

!：逻辑非

<=，>=，<，>

==：结构相等，深入比较数据结构：(1, 2) == (1, 2) 为 true。很方便，但要谨慎使用

===：引用相等，浅层比较数据结构。(1, 2) === (1, 2) 为 false。
let myTuple = (1, 2); myTuple === myTuple 为 true

!=：结构不相等

!==：引用不相等
**/

// let ageAndName = (24, "Lil' ReScript")
// let my3dCoordinates = (20.0, 30.5, 100.0)
let ageAndName: (int, string) = (24, "Lil' ReScript")
// a tuple type alias
type coord3d = (float, float, float)
let my3dCoordinates: coord3d = (20.0, 30.5, 100.0)
let (_, y, _) = my3dCoordinates 
Js.log(y)
let coordinates1 = (10, 20, 30)
let (c1x, _, _) = coordinates1
let coordinates2 = (c1x + 50, 20, 30)
let getCenterCoordinates = () => {
  let x = 1 //doSomeOperationsHere()
  let y = 2 //doSomeMoreOperationsHere()
  (x, y)
}

Js.log(getCenterCoordinates())