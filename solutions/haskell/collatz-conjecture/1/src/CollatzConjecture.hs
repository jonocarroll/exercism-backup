module CollatzConjecture (collatz) where

collatz_seq :: Integer -> [Integer]
collatz_seq 1 = [1]
collatz_seq n
 | even n = n:collatz_seq (n `div` 2)
 | odd n = n:collatz_seq (n*3 + 1)
collatz_seq _ = [0]

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | n == 1 = Just 0
  | otherwise = Just (toInteger (length (collatz_seq n) - 1))
