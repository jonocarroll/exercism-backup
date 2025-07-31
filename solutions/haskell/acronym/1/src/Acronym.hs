module Acronym (abbreviate) where

import Data.Char

replace :: Eq a => a -> a -> [a] -> [a]
replace a b = map $ \c -> if c == a then b else c

abbreviate :: String -> String
abbreviate = map (toUpper . head) . words . replace '-' ' ' . replace '_' ' '

