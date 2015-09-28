module Main where

import Test.HUnit
import Test.Framework
import Test.Framework.Providers.HUnit

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
import Solutions.Problem012 as P12
import Solutions.Problem013 as P13
import Solutions.Problem014 as P14
import Solutions.Problem015 as P15
import Solutions.Problem016 as P16
import Solutions.Problem020 as P20
import Solutions.Problem021 as P21
import Solutions.Problem025 as P25
import Solutions.Problem034 as P34
import Solutions.Problem040 as P40
import Solutions.Problem048 as P48

tests = TestList [
    TestCase (assertEqual "Test 1a" 23 (P1.solution 10)),
    TestCase (assertEqual "Test 1b" 233168 (P1.solution 1000)),
    TestCase (assertEqual "Test 2a" 44 (P2.solution 100)),
    TestCase (assertEqual "Test 2b" 4613732 (P2.solution 4000000)),
    TestCase (assertEqual "Test 3a" 29 (P3.solution 13195)),
    TestCase (assertEqual "Test 3b" 6857 (P3.solution 600851475143)),
    TestCase (assertEqual "Test 4a" 906609 (P4.solution)),
    TestCase (assertEqual "Test 5a" (Just 2520) (P5.solution 10)),
    TestCase (assertEqual "Test 5b" (Just 232792560) (P5.solution 20)),
    TestCase (assertEqual "Test 6a" 2640 (P6.solution 10)),
    TestCase (assertEqual "Test 6b" 25164150 (P6.solution 100)),
    TestCase (assertEqual "Test 7a" 13 (P7.solution 6)),
    TestCase (assertEqual "Test 7b" 104743 (P7.solution 10001)),
    TestCase (assertEqual "Test 8a" 5832 (P8.solution 4)),
    TestCase (assertEqual "Test 8b" 23514624000 (P8.solution 13)),
    TestCase (assertEqual "Test 9a" 60 (P9.solution 12)),
    TestCase (assertEqual "Test 9b" 31875000 (P9.solution 1000)),
    TestCase (assertEqual "Test 10a" 17 (P10.solution 10)),
    TestCase (assertEqual "Test 10b" 142913828922 (P10.solution 2000000)),
    TestCase (assertEqual "Test 12a" (Just 28) (P12.solution 5)),
    TestCase (assertEqual "Test 12b" (Just 76576500) (P12.solution 500)),
    TestCase (assertEqual "Test 13a" 5537376230 (P13.solution)),
    TestCase (assertEqual "Test 14a" 97 (P14.solution 100)),
    TestCase (assertEqual "Test 14b" 6171 (P14.solution 10000)),
    TestCase (assertEqual "Test 15a" 6 (P15.solution 2)),
    TestCase (assertEqual "Test 15b" 137846528820 (P15.solution 20)),
    TestCase (assertEqual "Test 16a" 26 (P16.solution 15)),
    TestCase (assertEqual "Test 16b" 1366 (P16.solution 1000)),
    TestCase (assertEqual "Test 20a" 27 (P20.solution 10)),
    TestCase (assertEqual "Test 20b" 648 (P20.solution 100)),
    TestCase (assertEqual "Test 20c" 3 (P20.solution 5)),
    TestCase (assertEqual "Test 21a" 504 (P21.solution 300)),
    TestCase (assertEqual "Test 21b" 31626 (P21.solution 10000)),
    TestCase (assertEqual "Test 25a" 12 (P25.solution 3)),
    TestCase (assertEqual "Test 25b" 4782 (P25.solution 1000)),
    TestCase (assertEqual "Test 34" 40730 (P34.solution)),
    TestCase (assertEqual "Test 40" 210 (P40.solution)),
    TestCase (assertEqual "Test 48a" 405071317 (P48.solution 10)),
    TestCase (assertEqual "Test 48b" 9110846700 (P48.solution 1000))
    ]

main = defaultMain $ hUnitTestToTests tests
