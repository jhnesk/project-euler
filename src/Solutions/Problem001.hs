{- |
Module      : $Header$
Description : Solution to problem 1
License     : PublicDomain

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}
module Solutions.Problem001 where

-- | The solution sums all numbers in the list of natural numbers below n
--   filtered by divisibility for 3 and 5.
solution :: Int -> Int
solution n = sum (filter condition [0..n-1])
    where
        condition x = x `mod` 3 == 0 || x `mod` 5 == 0

