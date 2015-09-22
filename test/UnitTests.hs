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
    TestCase (assertEqual "Test 7b" 104743 (P7.solution 10001))
    ]

main = defaultMain $ hUnitTestToTests tests
