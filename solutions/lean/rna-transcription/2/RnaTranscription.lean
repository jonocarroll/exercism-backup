namespace RnaTranscription

def complement (nucleotide : Char) : Char :=
  match nucleotide with
  | 'A' => 'U'
  | 'T' => 'A'
  | 'C' => 'G'
  | 'G' => 'C'
  | _ => nucleotide

def toRna (dna : String) : String :=
  String.map complement dna

end RnaTranscription
