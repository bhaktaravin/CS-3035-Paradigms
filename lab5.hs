
--Part 1
findNext :: Int -> [Int] ->Int
findNext _ [] = -1
findNext n (x:xs)
    | xs == [] = -1
    | n == head xs = x+2
    | otherwise =findNext n xs



--Part 2
findPrev :: Int -> [Int] -> Int
findPrev _ [] = -1
findPrev n (x:xs)
    | xs == [] = -1
    | n == head xs = x
    | otherwise = findPrev n xs


--Part 3
digs :: Int -> [Int]
digs 0 = []
digs x = digs (div x 10) ++ [x `mod` 10]


sumList :: Int-> Int
sumList x = sum (digs x)
