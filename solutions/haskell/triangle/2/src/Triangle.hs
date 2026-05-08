module Triangle (TriangleType(..), triangleType) where

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

isTriangle :: (Num a, Ord a) => a -> a -> a -> Bool
isTriangle a b c = ( a > 0 && b > 0 && c > 0 && a + b >= c && b + c >= a && a + c >= b )

triangleType :: (Num a, Ord a) => a -> a -> a -> TriangleType
triangleType a b c 
    | not (isTriangle a b c) = Illegal
    | a == b && a == c && b == c = Equilateral
    | a /= b && a /= c && b /= c = Scalene
    | a == b || a == c || b == c = Isosceles
    | otherwise = Illegal
