namespace Leap

def leapYear (year : UInt16) : Bool :=
  if ((year % 4 == 0) && ((not (year % 100 == 0)) || (year % 400 == 0))) then True else False

end Leap
