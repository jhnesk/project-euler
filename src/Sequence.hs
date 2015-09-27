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

-- | Factorial sequence
factorial :: Integral int => [int]
factorial = 1 : scanl (*) 1 [2..]

-- | Square numbers
squares :: Integral int => [int]
squares = [n^2 | n <- [1..]]

-- | Triangle numbers
triangles :: Integral int => [int]
triangles = [div (n * (n+1)) 2 | n <- [1..]]

-- | Cube numbers
cubes :: Integral int => [int]
cubes = [n^3 | n <- [1..]]

-- | Pentagon numbers
pentagons :: Integral int => [int]
pentagons = [div (n * (3 * n - 1)) 2 | n <- [1..]]

-- | Hexagonal numbers
hexagons :: Integral int => [int]
hexagons = [n * (2 * n -1) | n <- [1..]]

-- | Divisors of n
divisors :: Integral int => int -> [int]
divisors n = filter (\x -> mod n x == 0) [1..(div n 2)]

-- | Amicable numbers
amicables :: Integral int => [int]
amicables = [a | a <- [1..], let b = dsum a, not (a == b), dsum b == a]
    where dsum = sum . divisors

-- | Self powers
selfPowers :: Integral int => [int]
selfPowers = [n^n | n <- [1..]]

