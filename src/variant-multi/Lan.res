type t

@scope("Intl") @val
external makeNumberFormat: ([#"de-DE" | #"en-GB" | #"en-US"]) => t = "NumberFormat"

let intl = makeNumberFormat(#"de-DE")
