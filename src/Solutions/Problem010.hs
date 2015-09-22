{- | Problem 10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}
module Solutions.Problem010 where

import Data.Numbers.Primes(primes)

solution n = sum (takeWhile (<n) primes)

