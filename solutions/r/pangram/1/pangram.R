test_letter <- function(x) {
  letters %in% x
}

is_pangram <- function(input) {
  # all(letters %in% strsplit(tolower(input), "")[[1]])
  input |> 
    tolower() |> 
    strsplit("") |> 
    el() |> 
    test_letter() |> 
    all()
}
