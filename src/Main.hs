module Main where

import System.Environment(getArgs)
import Solutions.Problem001 as P1
import Solutions.Problem002 as P2
import Solutions.Problem003 as P3
import Solutions.Problem004 as P4
import Solutions.Problem005 as P5
import Solutions.Problem006 as P6
import Solutions.Problem007 as P7
import Solutions.Problem008 as P8
import Solutions.Problem009 as P9
import Solutions.Problem010 as P10
import Solutions.Problem013 as P13
import Solutions.Problem016 as P16
import Solutions.Problem020 as P20
import Solutions.Problem025 as P25

main = do
    args <- getArgs
    let p = head args
    print (solution p)
    where
        solution "1" = show (P1.solution 1000)
        solution "2" = show (P2.solution 4000000)
        solution "3" = show (P3.solution 600851475143)
        solution "4" = show (P4.solution)
        solution "5" = show (P5.solution 20)
        solution "6" = show (P6.solution 100)
        solution "7" = show (P7.solution 10001)
        solution "8" = show (P8.solution 13)
        solution "9" = show (P9.solution 1000)
        solution "10" = show (P10.solution 2000000)
        solution "13" = show (P13.solution)
        solution "16" = show (P16.solution 1000)
        solution "20" = show (P20.solution 100)
        solution "25" = show (P25.solution 1000)
        solution x   = "No solution found"
