{- |
Module      : $Header$
Description : Solution to problem 7
License     : PublicDomain

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
see that the 6th prime is 13.

What is the 10 001st prime number?
-}
module Solutions.Problem007 where

import Data.Numbers.Primes(primes)

solution n = primes !! (n-1)
