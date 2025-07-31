module Sieve (primesUpTo) where

-- You should not use any of the division operations when implementing
-- the sieve of Eratosthenes.
import Prelude hiding (div, mod, divMod, rem, quotRem, quot, (/))

primesUpTo :: Integer -> [Integer]
primesUpTo n = foldl removeMultiples [2..n] [2..n]
  where
    removeMultiples xs y = filter (\x -> x `notElem` [2*y, 3*y..n]) xs
