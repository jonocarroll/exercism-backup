anagram <- function(subject, candidates) {
  # remove any same words and inconsistent lengths
  nonsames <- candidates[tolower(candidates) != tolower(subject) & 
                           nchar(subject) == nchar(candidates)]
  if (!length(nonsames)) return(c()) # no remaining candidates
  s_letters <- sort(tolower(strsplit(subject, "")[[1]]))
  c_letters <- sapply(sapply(nonsames, \(x) strsplit(x, "")), sort, simplify = FALSE)
  # find all cases where the letters are all the same
  anagrams <- nonsames[sapply(c_letters, \(x) all(s_letters == tolower(x)))]
  # if none found, return NULL
  if(!length(anagrams)) NULL else anagrams
}
