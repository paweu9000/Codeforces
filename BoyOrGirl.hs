module Main where

-- PROBLEM
-- https://codeforces.com/problemset/problem/236/A

main :: IO ()
main = do
    input <- getLine :: IO String
    let x = filter (== True) $ uniques input
    if even (length x) then putStrLn "CHAT WITH HER!"
    else putStrLn "IGNORE HIM!"

uniques :: String -> [Bool]
uniques [] = []
uniques str = isUnique (head str) (tail str) : uniques (tail str)
    where 
        isUnique :: Char -> String -> Bool
        isUnique x [] = True
        isUnique x (a:as)
            | x == a = False
            | x /= a = isUnique x as