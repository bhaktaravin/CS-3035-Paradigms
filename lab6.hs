
{-1-}
addTwoNum :: Int -> Int -> Int
addTwoNum x y= x+y

addTwoNum' :: Int-> Int
addTwoNum' = (+10)


{-2-}
checkChar :: Char -> Bool
checkChar = (`elem`['a' .. 'z'])

{-3-}
applyThree :: (Int -> Int)-> Int -> Int
applyThree f x = f( f (f x))

{-4-}
everyTwo :: (Int -> Int) -> [Int] ->[Int]
everyTwo f [] = []
everyTwo f (x:[]) = [(f x)]
everyTwo f (x:y:therest) = (f x):y:(everyTwo f therest)

{-5-}
zipWidth :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
zipWidth _ [] _ _ =[]
zipWidth _ _ [] _ =[]
zipWidth _ _ _ [] =[]
zipWidth f (x:xs) (y:ys) (z:zs) = f x y z: zipWidth f xs ys zs

{-6-}
toTuple :: (Int -> Int) -> Int -> (Int, Int)
toTuple f x  = if x == 2 then (f 2, 3) else if x == 3 then (2 , f 3) else (0, 0)

{-7-}
secondElement :: [Int] -> (Int -> Int) -> [(Int,Int)]
secondElement (x:y:xs) f = [(x, f y )]
