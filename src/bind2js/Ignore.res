@val external doSomething: (@ignore 'a, 'a) => unit = "doSomething"

doSomething("this only shows up in ReScript code", "test")
