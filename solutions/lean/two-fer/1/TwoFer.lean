namespace TwoFer

def twoFer (name : Option String) : String :=
  let y := match name with
          | .none => "you"
          | _ => name.get!
  s!"One for {y}, one for me."

end TwoFer
