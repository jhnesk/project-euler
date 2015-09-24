{- |
Module      : $Header$
Description : Solution to problem 16
License     : PublicDomain

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
-}
module Solutions.Problem016 where

import Utils(digitSum)

solution n = digitSum (2^n)
