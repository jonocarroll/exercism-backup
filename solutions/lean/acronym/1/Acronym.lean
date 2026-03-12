namespace Acronym

def splitReplace : String → String
  | "" => ""
  | s =>
    let chars := s.toList
    let rec go : List Char → List Char
      | [] => []
      | [c] => [c]
      | x1 :: x2 :: xs =>
        if x1.isLower ∧ x2.isUpper then
          x1 :: ' ' :: go (x2 :: xs)
        else if x1 ∈ "-_".toList then
          ' ' :: go (x2 :: xs)
        else
          x1 :: go (x2 :: xs)
    String.mk (go chars)

def abbreviate (s : String) : String :=
  let replaced := splitReplace s
  let words := replaced.splitToList Char.isWhitespace |>.filter (· != "")
  String.mk (words.filterMap (·.toList.head?))
  |>.map Char.toUpper

end Acronym
