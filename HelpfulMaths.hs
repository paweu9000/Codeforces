module Main where

-- PROBLEM
-- https://codeforces.com/problemset/problem/339/A

import Data.List ( sort )

main :: IO ()
main = do
    input <- getLine :: IO String
    nums <- splitStr '+' input
    putStrLn $ calculate "" $ sort $ map read nums

splitStr :: Char -> String -> IO [String]
splitStr delimiter str = return $ words [if c == delimiter then ' ' else c | c <- str]

calculate :: String -> [Int] -> String
calculate str [x] = str ++ show x
calculate str (x:xs) = str ++ show x ++ "+" ++ calculate "" xs
