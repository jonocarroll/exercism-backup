module Strain (keep, discard) where

import Data.List

discard :: (a -> Bool) -> [a] -> [a]
discard p xs = rem where
  (_, rem) = partition p xs

keep :: (a -> Bool) -> [a] -> [a]
keep p xs = satisfies where
  (satisfies, _) = partition p xs
