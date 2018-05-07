--Part 1
generation :: Int->String
generation year
   |(year >1995) = "Generation Z"
   |(year > 1980) ="Millennial"
   |(year >1965) ="Generation X"
   |(year >1945) ="Baby Boomer"
   |(year > 1933) ="The Silent Generation"
   |otherwise ="The Greatest Generation"

--Part 2
generation2 :: Int -> String
generation2 year
   |(year > 1995) = "Generation Z"
   |(year > 1980) = "Millennial"
   |(year > 1965) = "Generation X"
   |(year > 1945) = "Baby Boomer"
   |(year > 1933) = "The Silent Generation"
   |otherwise ="The Greatest Generation"
   where x= 2018-year

--Part 3
triangle :: (Float,Float) -> Float
triangle (a,b)= hyp
  where hyp= sqrt(a^2+b^2)




--Part 4
listOfFloats :: [Float] -> Float -> [Float]
listOfFloats n a = [x*new | x <- n, let new = a*pi]



--Part 5
productList :: [Int]->Int
productList x= case x of
    [] -> 0
    [x]->x
    [x,x1] -> x*x1
    [x,x1,x2]->x*x1*x2
    
    (x :f2 :f3 : _) -> x*f2*f3
