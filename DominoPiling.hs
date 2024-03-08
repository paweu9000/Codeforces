module Main where

main :: IO ()
main = do
    input <- getLine :: IO String
    let (x:y:_) = map read (words input)
    print ((x*y)`div`2)