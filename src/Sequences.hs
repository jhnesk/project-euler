{- |
Module      : $Header$
Description : Definition of various sets and sequences
License     : PublicDomain
-}
module Sequences where

import Data.Digits(digits)
import Formulae

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
triangles = [triangle n | n <- [1..]]

-- | Cube numbers
cubes :: Integral int => [int]
cubes = [n^3 | n <- [1..]]

-- | Pentagon numbers
pentagons :: Integral int => [int]
pentagons = [pentagon n | n <- [1..]]

-- | Hexagonal numbers
hexagons :: Integral int => [int]
hexagons = [hexagon n | n <- [1..]]

-- | Divisors of n
divisors :: Integral int => int -> [int]
divisors n = [x | x <- [1..(div n 2)], mod n x == 0]

-- | Factors of n
factors :: Integral int => int -> [int]
factors n = lows ++ (reverse $ map (div n) lows)
    where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]

-- | Amicable numbers
amicables :: Integral int => [int]
amicables = [a | a <- [1..], let b = dsum a, not (a == b), dsum b == a]
    where dsum = sum . divisors

-- | Self powers
selfPowers :: Integral int => [int]
selfPowers = [n^n | n <- [1..]]

-- | Champernowne word
champernowne :: Integral int => [int]
champernowne = concat $ map (digits 10) [1..]

-- | Cartesian product
cartesianProduct :: [a] -> [a] -> [(a,a)]
cartesianProduct (x:xs) (y:ys) = [(a,b) | a <- (x:xs), b <- (y:ys)]

-- | Cartesian square
cartesianSquare :: [a] -> [(a,a)]
cartesianSquare (x:xs) = cartesianProduct (x:xs) (x:xs)

