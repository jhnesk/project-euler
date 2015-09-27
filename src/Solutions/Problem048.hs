{- |
Module      : $Header$
Description : Solution to problem 48
License     : PublicDomain

The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
-}
module Solutions.Problem048 where

import Sequence(selfPowers)

solution n = mod (sum (take n selfPowers)) (10^10)

