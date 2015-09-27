{- |
Module      : $Header$
Description : Definition of various formulae
License     : PublicDomain
-}
module Formulae where

triangle :: Integral int => int -> int
triangle n = div (n * (n+1)) 2

pentagon :: Integral int => int -> int
pentagon n = div (n * (3 * n - 1)) 2

hexagon :: Integral int => int -> int
hexagon n = n * (2 * n -1)

