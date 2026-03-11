namespace RnaTranscription

def convert (codon : Char) : Char :=
  match codon with
  | 'A' => 'U'
  | 'T' => 'A'
  | 'C' => 'G'
  | 'G' => 'C'
  | _ => ' '

def toRna (dna : String) : String :=
  res where
    l := String.toList dna
    s := List.map convert l
    res := String.mk s

end RnaTranscription
