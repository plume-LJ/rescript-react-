// type option<'a> = None | Some('a)
// let personHasACar = false
let personHasACar = true
let licenseNumber =
  if personHasACar {
    Some(5)
  } else {
    None
  }

let x = Some(Some(Some(5)))
// let x = Some(None)
