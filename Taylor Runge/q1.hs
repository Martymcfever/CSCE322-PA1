reverseString :: String -> String
reverseString [] = []
reverseString (x:xs)
  | fromEnum x <= 122 && fromEnum x >= 97 = reverseString xs ++ [toEnum(fromEnum(x) - 32)]
  | otherwise = reverseString xs ++ [x]

main = do
  putStrLn "Hello World"
  let result = reverseString "Hello World"
  putStrLn result