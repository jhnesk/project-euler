{- |
Module      : $Header$
Description : Solution to problem 3
License     : PublicDomain

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?
-}
module Solutions.Problem003 where

import Data.Numbers.Primes(primeFactors)

solution n = maximum $ primeFactors n

