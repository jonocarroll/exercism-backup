module Pangram (isPangram) where

import Data.List
import Data.Char

alphabet :: [Char]
alphabet = ['a'..'z']

isPangram :: String -> Bool
isPangram text = (nub (sort (intersect (filter isLetter (map toLower text)) alphabet))) == alphabet
