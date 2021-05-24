-- Prática 01 de Haskell - Parte 1
-- Nome: Luiz Felipe Cavalheiro

sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

circleArea :: Float -> Float
circleArea r = 2*pi*r^2

age :: Int -> Int -> Int
age born current = current - born

isElderly :: Int -> Bool
isElderly age = if age > 65 then True else False

htmlItem :: String -> String
htmlItem link = "<li>" ++ link ++ "</li>"

startsWithA :: String -> Bool
startsWithA word = if head word == 'A' then True else False

isVerb :: String -> Bool
isVerb verb = if last verb == 'r' then True else False

isVowel :: Char -> Bool
isVowel v = if (v == 'a' || v == 'e' || v == 'i' || v == 'o' || v == 'u') ||
               (v == 'A' || v == 'E' || v == 'I' || v == 'O' || v == 'U')
              then True else False

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads list1 list2 = if head list1 == head list2 then True else False

isVowel2 :: Char -> Bool
isVowel2 c = if (elem c "aeiou" || elem c "AEIOU") then True else False