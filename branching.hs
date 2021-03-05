{-# LANGUAGE TypeApplications #-}

import Data.Time
import Data.Int (Int8)

main :: IO ()
main = do
  now <- getZonedTime
  timeNow now

  let plan = Free
  putStrLn ("Customer owes " ++ show (billAmount plan) ++ " dollars.")

timeNow :: ZonedTime -> IO ()
timeNow now =
  case (todHour $ localTimeOfDay $ zonedTimeToLocalTime now) < 12 of
    True -> putStrLn "It's before noon"
    False -> putStrLn "It's after noon"

data ServicePlan = Free | Monthly | Annual deriving Show

billAmount :: ServicePlan -> Int
billAmount plan =
  case plan of
   Free -> 0
   Monthly -> 5
   Annual -> billAmount Monthly * 12
