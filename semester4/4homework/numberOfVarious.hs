import Data.List

allAreDifferent :: [Int] -> Bool
allAreDifferent list = length list == numberOfVarious list

numberOfVarious :: [Int] -> Int
numberOfVarious list = numberOfVarious' (sort list)

numberOfVarious' :: [Int] -> Int
numberOfVarious' []     = 0
numberOfVarious' [_]    = 1
numberOfVarious' (x:xs) = if (x == head xs)
                          then numberOfVarious' xs
                          else 1 + numberOfVarious' xs