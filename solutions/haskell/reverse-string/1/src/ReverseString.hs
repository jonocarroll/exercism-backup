module ReverseString (reverseString) where

reverseString :: String -> String
reverseString str = foldl (\acc x -> x : acc) [] str
