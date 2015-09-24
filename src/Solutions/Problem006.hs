{- |
Module      : $Header$
Description : Solution to problem 6
License     : PublicDomain

A palindromic number reads the same both ways. The largest palindrome

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten
natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one
hundred natural numbers and the square of the sum.
-}
module Solutions.Problem006 where

solution :: Int -> Int
solution n = (sum [1..n])^2 - sum (squares n)
    where
        squares n = [x^2 | x <- [1..n]]
