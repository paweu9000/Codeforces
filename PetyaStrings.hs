module Main where
import Data.Char (toLower, ord)

main :: IO ()
main = do
    str1 <- getLine :: IO String
    str2 <- getLine :: IO String
    print $ checkDiff str1 str2 0

checkDiff :: String -> String -> Int -> Int
checkDiff [] [] res = res
checkDiff (x1:xs1) (x2:xs2) res 
        | ord (toLower x1) < ord (toLower x2) = checkDiff [] [] (-1)
        | ord (toLower x1) > ord (toLower x2) = checkDiff [] [] 1
        | otherwise = checkDiff xs1 xs2 res