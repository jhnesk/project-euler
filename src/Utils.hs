{- |
Module      : $Header$
Description : Solution to problem 16
License     : PublicDomain

-}
module Utils where

import Data.Digits(digits)

digitSum n = sum $ digits 10 n

