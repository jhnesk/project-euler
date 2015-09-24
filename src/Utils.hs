{- |
Module      : $Header$
Description : Solution to problem 16
License     : PublicDomain

-}
module Utils where

import Data.Digits(digits)
import Data.List(maximumBy)
import Data.Ord(comparing)

digitSum n = sum $ digits 10 n

digitLength n = length $ digits 10 n

fibs = 1 : 1 : (zipWith (+) fibs (tail fibs))

isPalindrome x = (show x) == reverse (show x)

maxIndex :: Ord a => [a] -> Int
maxIndex = fst . maximumBy (comparing snd) . zip [0..]
