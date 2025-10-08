module Lib
    ( someFunc, summ
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

summ :: Int -> Int -> Int 
summ a b = a + b