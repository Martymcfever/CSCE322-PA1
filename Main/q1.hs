-- This function uses the to and from Enum from the haskell prelude to convert the chars of a string to their ascii values to be modified to their uppercase form
-- If a char is not a lowercase letter according to the ascii chart it defaults to the otherwise case and is appended as is

reverseString :: String -> String
reverseString [] = []
reverseString (x:xs)
  | fromEnum x <= 122 && fromEnum x >= 97 = reverseString xs ++ [toEnum(fromEnum(x) - 32)]
  | otherwise = reverseString xs ++ [x]

main = do
  putStrLn "Hello World"
  let result = reverseString "Hello World"
  putStrLn result