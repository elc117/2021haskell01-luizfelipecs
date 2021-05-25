-- Prática 01 de Haskell - Parte 2
-- Nome: Luiz Felipe Cavalheiro

import Parte1
import Quickstart

itemize :: [String] -> [String]
itemize s = map htmlItem s

--
onlyVowels :: String -> String
onlyVowels word = filter isVowel2 word

--
onlyElderly :: [Int] -> [Int]
onlyElderly old = filter isElderly old

--
onlyLongWords :: [String] -> [String]
onlyLongWords long = filter isLongWord long

--
onlyEven :: [Int] -> [Int]
onlyEven list = filter isEven list

--
between60and80 :: Int -> Bool
between60and80 num = if num > 60 && num < 80 then True else False

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 numberlist = filter between60and80 numberlist

--
isSpace :: Char -> Bool
isSpace s = if s == ' ' then True else False

countSpaces :: String -> Int
countSpaces sp = length (filter isSpace sp)

--
calcAreas :: [Float] -> [Float]
calcAreas raios = map circleArea raios

--
charFound :: Char -> String -> Bool
charFound ch st = if ch == head st then True 
                  else if tail st /= [] then charFound ch (tail st)
                  else False

