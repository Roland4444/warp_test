module Lib
    ( someFunc, summ, get_pass_via_email, token, add, cross, sub, process_delta
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

cross :: Eq a => [a] -> [a] -> [a]
cross xs ys = filter (`elem` ys) xs

sub :: Eq a => [a] -> [a] -> [a]
sub xs ys = filter (`notElem` ys) xs

add :: Eq a => [a] -> [a] -> [a]
add xs ys = foldl (\acc x -> if x `elem` acc then acc else acc ++ [x]) [] (xs ++ ys)


process_delta :: FilePath -> FilePath -> IO Int
process_delta input1 input2 = do
    block_lines1 <- readLinesFromFile input1
    block_lines2 <- readLinesFromFile input2
    let good = sub block_lines1 block_lines2
    mapM_ putStrLn good

    let fileName = "delta.txt"


    -- Combine the list into a single string with newlines
    let fileContents = unlines good
    
    -- Write the entire string to the file
    writeFile fileName fileContents
    putStrLn $ "Successfully wrote to " ++ fileName
    return 0