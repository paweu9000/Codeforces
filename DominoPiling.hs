module Main where

-- PROBLEM
-- https://codeforces.com/problemset/problem/50/A

main :: IO ()
main = do
    input <- getLine :: IO String
    let (x:y:_) = map read (words input)
    print ((x*y)`div`2)