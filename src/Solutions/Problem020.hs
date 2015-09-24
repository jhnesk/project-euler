{- |
Module      : $Header$
Description : Solution to problem 20
License     : PublicDomain

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
-}
module Solutions.Problem020 where

import Data.Digits(digits)

solution n = digitSum $ factorial n
    where
        digitSum n = sum $ digits 10 n
        factorial 0 = 1
        factorial n = n * factorial (n-1)
