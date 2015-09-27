{- |
Module      : $Header$
Description : Solution to problem 15
License     : PublicDomain

Starting in the top left corner of a 2×2 grid, and only being able to
move to the right and down, there are exactly 6 routes to the bottom
right corner.

How many such routes are there through a 20×20 grid?
-}
module Solutions.Problem015 where

import Sequences(factorial)

solution n = div (factorial !! (n*2)) ((factorial !! n) ^ 2)

