addTwo::Int -> Int
addTwo a = a +2

powerNum :: Int ->Int-> Int
powerNum x y= x^y

addString :: String -> String -> String
addString x y = x ++ y
--End of Part 1
---------------------------------------------------
addNumber ::  Num a => a -> a ->a
addNumber a b= a + b
--End of Part 2
---------------------------------------------------
printMe :: String -> Float
printMe x = read x + 3.4

--End of Part 3
-----------------------------------------------------
dependsInt :: Int -> String
dependsInt x = if x==1 then "Once" else if x==2 then "Twice" else if x==3 then "Thrice" else "Don't know how to say that in English"
--End of Part 4
--------------------------------------------------
getFirst :: (Int,Int,Int,Int)->Int
getFirst (a,_,_,_)=a

getSecond :: (Int,Int,Int,Int)->Int
getSecond (b,_,_,_) = b

getThird :: (Int,Int,Int,Int)->Int
getThird (_,_,c,_)=c

getFourth :: (Int,Int,Int,Int)->Int
getFourth (_,_,_,d)=d
--End of Part 5
----------------------------------------------------
exponentPower :: Int->Int->Int
exponentPower x 0 =1
exponentPower x y= x*exponentPower x (y-1)
--End of Part 6
-----------------------------------------------------
{-
length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:the_rest) = 1 + length' the_rest  
-}
--num=product [1..5]
--num= sum[1..5]

productList :: [Int]-> Int
poductList [] = 0 
productList x=if length x < 3 || length x ==0 then 0 else if length x > 3 then (x !! 0) * (x !! 1)* (x!! 2)
