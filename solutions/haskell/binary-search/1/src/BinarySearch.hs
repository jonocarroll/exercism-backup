module BinarySearch (find) where

import Data.Array
import Data.List (sort)

sortArray :: (Ord e) => Array Int e -> Array Int e
sortArray arr = listArray (lo, hi) (sort (elems arr))
    where (lo, hi) = bounds arr

bins :: (Ord a) => Array Int a -> a -> Int -> Int -> Maybe Int
bins arr target lo hi
    | lo > hi        = Nothing
    | target == m    = Just mid
    | target > m     = bins arr target (succ mid) hi
    | otherwise      = bins arr target lo (pred mid)
    where
        mid = lo + (hi - lo) `div` 2
        m   = arr ! mid

find :: Ord a => Array Int a -> a -> Maybe Int
find haystack needle = bins sorted needle lo hi
    where
        sorted = sortArray haystack
        (lo, hi) = bounds sorted
