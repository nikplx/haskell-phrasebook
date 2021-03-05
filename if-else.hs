import Control.Monad (when)

main :: IO ()
main = do
  if (even 7)
    then putStrLn "even"
    else putStrLn "odd"

  when (8 `mod` 4 == 0) $
    putStrLn "8 by 4"
