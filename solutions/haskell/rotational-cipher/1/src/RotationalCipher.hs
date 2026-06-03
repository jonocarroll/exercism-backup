module RotationalCipher (rotate) where

import Data.List (elemIndex)

lowers, uppers :: String
lowers = ['a' .. 'z']
uppers = ['A' .. 'Z']

rotate :: Int -> String -> String
rotate n = map rotateChar
  where
    rotateChar c
      | Just i <- elemIndex c lowers = lowers !! ((i + n) `mod` 26)
      | Just i <- elemIndex c uppers = uppers !! ((i + n) `mod` 26)
      | otherwise = c