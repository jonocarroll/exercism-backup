module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys
  | length xs == length ys = Just $ sum . (map fromEnum) $ zipWith (/=) xs ys
  | otherwise = Nothing
