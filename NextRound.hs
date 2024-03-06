module Main where

main :: IO ()
main = do
    input <- getLine :: IO String
    let (n:k:_) = words input
    participants <- getLine :: IO String
    let scores = words participants
    print $ getWinners (read n) (read k) (map read scores)

getWinners :: Int -> Int -> [Int] -> Int
getWinners n k scores = length $ filter (\x -> x >= scores!!(k-1) && x > 0) scores