module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

count :: Either String (Map Nucleotide Int) -> Char -> Either String (Map Nucleotide Int)
count (Left e) _ = Left e
count (Right m) c = case c of
    'A' -> add A m
    'C' -> add C m
    'G' -> add G m
    'T' -> add T m
    _   -> Left $ "invalid nucleotide: " ++ [c]
    where add x y = Right $ Map.adjust succ x y

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = foldl count initial xs
  where initial = Right $ Map.fromList [(A, 0), (C, 0), (G, 0), (T, 0)]
