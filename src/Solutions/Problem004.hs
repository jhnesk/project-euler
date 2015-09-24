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

-- | Take two lists of all 3-digit numbers and multiply the elements.
--   Filter for numbers that is the same string backwards and return
--   the maximum value.
solution = maximum $ filter isPalindrome $ product [100..999] [100..999]
   where
        product xs ys = [x*y | x <- xs, y <-ys]
