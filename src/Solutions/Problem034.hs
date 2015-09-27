{- |
Module      : $Header$
Description : Solution to problem 34
License     : PublicDomain

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial
of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.
-}
module Solutions.Problem034 where

import Data.Digits(digits)
import Sequences(factorial)

solution = sum $ filter f [10..100000]
    where
        f n = n == sum (map (factorial !!) (digits 10 n))

