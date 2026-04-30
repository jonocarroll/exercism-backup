module RunLength (decode, encode) where

import Control.Arrow
import Data.List
import Data.Char

decode :: String -> String
decode [] = []
decode encodedText = mkStr num lett ++ decode s
    where (num, rest) = span isDigit encodedText
          lett = rest !! 0
          s = drop 1 rest
          mkStr n l = if null n then [l] else replicate (read n) l
          
encode :: String -> String
encode text = concatMap (\(a, b) -> a ++ b) $ map (count &&& nub) (group text)
    where count xs = let n = length xs in if n == 1 then "" else show n