module Lib
  ( hello
  , plus
  ) where

hello :: IO ()
hello = putStrLn "Hello, Nix Flake & Haskell!"

plus :: Int -> Int -> Int
plus a b = a + b