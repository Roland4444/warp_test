module Lib
    ( someFunc, summ, get_pass_via_email, token
    ) where

import Data.List (isInfixOf)
import Data.Maybe (mapMaybe)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

summ :: Int -> Int -> Int 
summ a b = a + b


readLinesFromFile :: FilePath -> IO [String]
readLinesFromFile filePath = fmap lines (readFile filePath)

get_pass_via_email:: String -> IO String 
get_pass_via_email  email = do
    block_lines <- readLinesFromFile "pass"
    mapM_ putStrLn block_lines
    let passwords = filterAndGetLastWordSafe email block_lines
    case passwords of
        [] -> return "Password not found"
        (p:_) -> return p


filterAndGetLastWordSafe pattern strings = 
    mapMaybe process $ filter (pattern `isInfixOf`) strings
    where
        process s = case words s of
            [] -> Nothing
            ws -> Just $ last ws     


readWholeFile :: FilePath -> IO String
readWholeFile path = readFile path

token :: IO String
token = readWholeFile "TOKEN"
    

  