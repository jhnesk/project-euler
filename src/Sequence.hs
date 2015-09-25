{- |
Module      : $Header$
Description : Definition of various sets
License     : PublicDomain

-}
module Sequence where

-- | Fibonacci sequence
fibs :: Integral int => [int]
fibs = 1 : 1 : (zipWith (+) fibs (tail fibs))

-- | Collatz sequence
collatz :: Integral int => int -> [int]
collatz n
    | n == 1 = [n]
    | odd n  = n : collatz (3*n+1)
    | even n = n : collatz (div n 2)

