module WordProblem (answer) where

import Data.Char (isDigit, toLower)
import Text.Read (readMaybe)

data Term = Num Int | Op (Int -> Int -> Int) | Unknown 

parse :: String -> [String]
parse s = filter (`notElem` ["what", "is", "by"]) cleaned
  where
    cleaned = map (filter (/= '?')) (words (map toLower s))

convert :: String -> Term
convert s
  | Just n <- readMaybe s = Num n
  | s == "plus"       = Op (+)
  | s == "minus"      = Op (-)
  | s == "divided"    = Op div
  | s == "multiplied" = Op (*)
  | otherwise          = Unknown

evaluate :: [Term] -> Maybe Int
evaluate (Num n : rest) = go n rest
  where
    go acc []                   = Just acc
    go acc (Op f : Num b : rem) = go (f acc b) rem
    go _   _                    = Nothing
evaluate _ = Nothing

answer :: String -> Maybe Int
answer = evaluate . map convert . parse