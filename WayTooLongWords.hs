module WayTooLongWords where

-- PROBLEM
-- https://codeforces.com/problemset/problem/71/A

main :: IO ()
main = do
    input <- readLn :: IO Int
    words <- getWords input []
    mapM_ putStrLn words

getWords :: Int -> [String] -> IO [String]
getWords 0 x = return x
getWords amount words = do
    input <- getLine :: IO String
    getWords (amount-1) (words ++ [transmute input])

transmute :: String -> String
transmute str
    | length str > 10 = head str : show (length str - 2) ++ [last str]
    | otherwise = str
