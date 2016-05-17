sums :: Int -> [[Int]]
sums 0 = [[]]
sums n = [(x : y) | x <- [1..n], y <- (sums (min (n - x) x))]