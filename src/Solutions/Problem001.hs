{- |
Module      : $Header$
Description : Solution to problem 1
License     : PublicDomain

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}
module Solutions.Problem001 where

solution n = sum [x | x <- [1..n-1], mod x 3 == 0 || mod x 5 == 0]

