// reserved for internal usage not prefer 
@module("myLibrary") external draw : 'a => unit = "draw"

type animal =
  | MyFloat(float)
  | MyString(string)

let betterDraw = (animal) =>
  switch animal {
  | MyFloat(f) => draw(f)
  | MyString(s) => draw(s)
  }

betterDraw(MyFloat(1.5))

// prefer 
@module("myLibrary") external drawFloat: float => unit = "draw"
@module("myLibrary") external drawString: string => unit = "draw"
