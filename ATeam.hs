module Main where

main :: IO ()
main = do
    problems <- readLn :: IO Int
    answers <- solve problems 0
    print answers

solve :: Int -> Int -> IO Int
solve 0 answers = return answers
solve problems answers = do
    guesses <- getLine :: IO String
    let isSure = length $ filter (== "1") $ words guesses
    if isSure >= 2 then solve (problems-1) (answers+1) else solve (problems-1) answers