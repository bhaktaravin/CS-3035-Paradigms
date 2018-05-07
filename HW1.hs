{-1-}
recursiveAdd :: Float -> Int -> Float
recursiveAdd sum i
  | i < 1  = sum
  | otherwise = recursiveAdd(sum +  1/ fromIntegral i) (i - 1)

{-2-}
recursiveAdd' :: Float -> Int -> Float
recursiveAdd' sum i
  | i < 1 = sum
  | otherwise = recursiveAdd'(sum + ((fromIntegral i) / (fromIntegral i +1))) (i-1)

{-3-}
removeMax :: [Int]->[Int]
removeMax (x : xs)
  | x == y = xs
  | otherwise = x : removeMax xs
  where y= maximum (x:xs)

{-4-}
sortList :: [Int] -> [Int]
sortList [] = []
sortList (x:[]) = [x]
sortList list = sortList (removeMax list) ++ [(maximum list)]
