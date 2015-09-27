{- |
Module      : $Header$
Description : Solution to problem 4
License     : PublicDomain

A palindromic number reads the same both ways. The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}
module Solutions.Problem004 where

import Utils(isPalindrome)

solution = maximum [x*y | x <- [100..999], y <- [100..999], isPalindrome (x*y)]
