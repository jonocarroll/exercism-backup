module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

count :: Either String (Map Nucleotide Int) -> Char -> Either String (Map Nucleotide Int)
count (Left e) _ = Left e
count (Right m) c = case c of
    'A' -> Right $ Map.adjust (+1) A m
    'C' -> Right $ Map.adjust (+1) C m
    'G' -> Right $ Map.adjust (+1) G m
    'T' -> Right $ Map.adjust (+1) T m
    _   -> Left $ "invalid nucleotide: " ++ [c]

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = foldl count initial xs
  where initial = Right $ Map.fromList [(A, 0), (C, 0), (G, 0), (T, 0)]
