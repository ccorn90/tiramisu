module Main where

import System.IO
import System.Environment
import Lib

readf fname = do
    handle <- openFile fname ReadMode
    hGetContents handle

main :: IO ()
main = do
    args <- getArgs
    contents <- mapM readf args
    putStrLn (foldl1 (++) contents)

