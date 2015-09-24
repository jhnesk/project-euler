{- |
Module      : $Header$
Description : Solution to problem 9
License     : PublicDomain

A palindromic number reads the same both ways. The largest palindrome

A Pythagorean triplet is a set of three natural numbers, a < b < c,
for which, a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}
module Solutions.Problem009(solution) where

pairs n = [(a,b) | a <- [1..n], b <- [1..n]]

triplets []         = []
triplets ((a,b):xs) = pythagoran (a,b,findC (a,b)) ++ triplets(xs)

pythagoran (a,b,c) = if a^2+b^2==c^2 then [(a,b,c)] else []

findC (a,b) = last $ takeWhile (\c -> c^2 <= (a^2 + b^2)) [1..]

tripletSum (a,b,c) = a+b+c

tripletProduct (a,b,c) = a*b*c

firstMatchingSum l n = head $ filter (\x -> tripletSum x == n) l

solution :: Int -> Int
solution n = tripletProduct $ firstMatchingSum (triplets $ pairs n) n

