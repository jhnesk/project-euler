{- |
Module      : $Header$
Description : Solution to problem 5
License     : PublicDomain

2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?
-}
module Solutions.Problem005 where

import Data.List(find)

-- |
solution n = find (divisibleByAll [n,n-1..1]) [n,n*2..]
    where
        divisibleByAll [] n = True
        divisibleByAll (x:xs) n = n `mod` x == 0 && divisibleByAll xs n
