module BST
    ( BST
    , bstLeft
    , bstRight
    , bstValue
    , empty
    , fromList
    , insert
    , singleton
    , toList
    ) where

data BST a = EmptyTree | Node a (BST a) (BST a) deriving (Show, Read, Eq) 

bstLeft :: BST a -> Maybe (BST a)
bstLeft EmptyTree = Nothing
bstLeft (Node _ left _) = Just left

bstRight :: BST a -> Maybe (BST a)
bstRight EmptyTree = Nothing
bstRight (Node _ _ right) = Just right

bstValue :: BST a -> Maybe a
bstValue EmptyTree = Nothing
bstValue (Node a _ _) = Just a

empty :: BST a
empty = EmptyTree

fromList :: Ord a => [a] -> BST a
fromList xs = foldl (flip insert) EmptyTree xs

insert :: Ord a => a -> BST a -> BST a
insert x EmptyTree = singleton x
insert x (Node a left right) 
    | x == a = Node a (insert x left) right
    | x < a = Node a (insert x left) right
    | x > a = Node a left (insert x right)
    | otherwise = Node a left (insert x right)

singleton :: a -> BST a
singleton x = Node x EmptyTree EmptyTree

toList :: BST a -> [a]
toList EmptyTree = []
toList (Node a left right) = toList left ++ [a] ++ toList right
