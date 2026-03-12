namespace TwoFer

def twoFer (name : Option String) : String :=
  let y := if name.isSome then name.get! else "you"
  s!"One for {y}, one for me."

end TwoFer
