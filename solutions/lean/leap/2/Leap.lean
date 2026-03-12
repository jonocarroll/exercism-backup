namespace Leap

def leapYear (year : UInt16) : Bool :=
  let y := year.toNat
  (4 ∣ y) ∧ ((¬ (100 ∣ y)) ∨ (400 ∣ y))

end Leap
