type basicBlueTone<'a> = [> #Blue | #DeepBlue | #LightBlue ] as 'a
type color = basicBlueTone<[#Blue | #DeepBlue | #LightBlue | #Purple]>

let color: color = #Purple

// This will fail due to missing minimum constructors:
// type notWorking = basicBlueTone<[#Purple]>

type validRed<'a> = [< #Fire | #Crimson | #Ash] as 'a
type myReds = validRed<[#Ash]>

// This will fail due to unlisted constructor not defined by the lower bound
// type notWorking = validRed<[#Purple]>

type company = [#Apple | #Facebook]
let theCompany: company = #Apple
let message = "Hello " ++ (theCompany :> string)

type company1 = [#1 | #2]
let theCompany: company1 = #1

let message1 = 1 + (theCompany :> int)

let myColor = #red

switch myColor {
| #red => Js.log("Hello red!")
| #blue => Js.log("Hello blue!")
}