namespace TwoFer

def twoFer (name : Option String) : String :=
  let y := name.getD "you"
  s!"One for {y}, one for me."

end TwoFer
