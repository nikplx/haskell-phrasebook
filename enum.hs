{-# LANGUAGE TypeApplications #-}

import Data.Int

main = do
  putStrLn (show (minBound @Int8))
  putStrLn (show [Rank8 .. King])

data Rank = Rank2
  | Rank7
  | Rank8
  | Rank9
  | Rank10
  | Jack
  | Queen
  | King
  | Ace
  deriving (Bounded, Enum, Show)
