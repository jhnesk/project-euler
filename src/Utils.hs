{- |
Module      : $Header$
Description : Various utility functions
License     : PublicDomain

-}
module Utils where

import Data.Digits(digits)
import Data.List(maximumBy)
import Data.Ord(comparing)

digitSum :: Integral n => n -> n
digitSum = sum . digits 10

digitLength :: Integral n => n -> Int
digitLength = length . digits 10

isPalindrome :: Show a => a -> Bool
isPalindrome a = (show a) == reverse (show a)

maxIndex :: Ord a => [a] -> Int
maxIndex = fst . maximumBy (comparing snd) . zip [0..]

