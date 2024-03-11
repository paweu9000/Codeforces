module Main where

-- PROBLEM
-- https://codeforces.com/problemset/problem/282/A

main :: IO ()
main = do
    amount <- readLn :: IO Int
    input <- saveInput amount []
    print $ foldr calculate 0 input

saveInput :: Int -> [String] -> IO [String]
saveInput 0 x = return x
saveInput a x = do
    input <- getLine :: IO String
    saveInput (a-1) (input:x)

calculate :: String -> Int -> Int
calculate "X++" x = x + 1
calculate "++X" x = x + 1
calculate "X--" x = x - 1
calculate "--X" x = x - 1