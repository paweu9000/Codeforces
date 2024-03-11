module Main where
import Data.Char (toUpper)

-- PROBLEM
-- https://codeforces.com/problemset/problem/281/A

main :: IO ()
main = do
    input <- getLine :: IO String
    putStrLn $ toUpper (head input) : tail input