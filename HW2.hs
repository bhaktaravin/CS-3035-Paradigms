{-1-}
isDivisible :: Int -> Int -> Bool
isDivisible x y = y `mod` x ==0

isFive = isDivisible 5

{-2-}
isPart :: String -> [Bool]
isPart = map(\x -> x `elem` ['a'..'f'])

{-3-}
tupleSum :: [Int] -> [Int] -> [Int]
tupleSum = zipWith(\a b -> a+b)

{-4-}
getFirst' :: [String]-> [String]
getFirst' str = map head $ map words str


{-5-}
theMatrix :: [[String]] -> [[String]]
theMatrix mat = map ( \x -> map (\y -> if y== "" then "0" else y )  x) mat
{-6-}
makeTuple :: [a] -> [(a,a)]
makeTuple x = makeTuple' x []

makeTuple' :: [a] -> [(a,a)] -> [(a,a)]
makeTuple' [] s = s
makeTuple' [a] s = s
makeTuple' (x:y:z) s = (x,y) : (makeTuple' z s)

{-7-}
product :: [(Int,Int)] -> [Int]
product = map (\ (a,b) -> a * b)

{-8-}
usingScan :: [Int] -> [Int]
usingScan x = scanl1 (+) x

{-9-}
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x= f $ f $ f x

{-10-}
isLowerCase :: Char -> Bool
isLowerCase = (`elem` ['a'..'z'])

{-11-}
firstWord :: [String]-> [String]
firstWord  args = firstWord' (map (\x-> (length(head x),x)) (map words args)) [] 0

firstWord' ::[(Int,[String])]-> [(Int,[String])] -> Int -> [String]
firstWord' [] st i =  map (\(x,y) -> unwords y ) st
firstWord' lst st i =  firstWord' ((filter (\(x,y) -> x/=i)) lst) (st++(filter (\(x,y) -> x==i) lst)) (i+1)

{-12-}
seperateList :: [Char] -> [String]
seperateList args = filter (\str ->str/= "" ) $ zipWith (\x alphabet -> filter (\char -> char==alphabet) x) (repeat args)  ['a'..'z']
