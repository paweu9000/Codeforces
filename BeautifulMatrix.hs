module Main where

-- PROBLEM
-- https://codeforces.com/problemset/problem/263/A

import Data.List (elemIndex)

main :: IO ()
main = do
    moves <- getInput 5 0
    print moves

getInput :: Int -> Int -> IO Int
getInput 0 moves = return moves
getInput lines moves = do
    line <- getLine :: IO String
    let x = elemIndex "1" (words line)
    case x of
        Nothing -> getInput (lines-1) moves
        Just a -> getInput (lines-1) (calculateMoves lines (a+1) 0)
        where
            calculateMoves :: Int -> Int -> Int -> Int
            calculateMoves lines index moves
                | lines == 3 && index == 3 = moves
                | lines < 3 = calculateMoves (lines+1) index (moves+1)
                | lines > 3 = calculateMoves (lines-1) index (moves+1)
                | index > 3 = calculateMoves lines (index-1) (moves+1)
                | index < 3 = calculateMoves lines (index+1) (moves+1)