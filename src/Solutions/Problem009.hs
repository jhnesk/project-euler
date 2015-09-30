{- |
Module      : $Header$
Description : Solution to problem 9
License     : PublicDomain

A Pythagorean triplet is a set of three natural numbers, a < b < c,
for which, a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}
module Solutions.Problem009 where

import Utils(isPythagoran)
import Utils(tripletSum)
import Utils(tripletProduct)
import Sequences(cartesianSquare)
import Data.List(find)
import Data.Maybe(fromMaybe)

triplets []         = []
triplets ((a,b):xs) = filter isPythagoran [(a,b,findC (a,b))] ++ triplets(xs)

findC (a,b) = last $ takeWhile (\c -> c^2 <= (a^2 + b^2)) [1..]

firstMatchingSum l n = fromMaybe (0,0,0) (find (\x -> tripletSum x == n) l)

solution n = tripletProduct $ firstMatchingSum (triplets $ (cartesianSquare [1..n])) n

