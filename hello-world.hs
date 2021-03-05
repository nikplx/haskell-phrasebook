import Data.Char

main :: IO ()
main = do
  let
    x = 2
    d = 5
  putStrLn ("hask" ++ "el" ++ (show d))
  putStrLn (upper . greet $ show x)

greet :: String -> String
greet name = "hello" ++ name

upper :: String -> String
upper str = map toUpper str
