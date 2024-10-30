

casesarEncode :: String a => a -> Integer -> a
casesarEncode [] n = []
casesarEncode (x:xs) n
    -- | ((fromEnum x) <= 90) && ((fromEnum x) >= 65) = [toEnum ((((fromEnum (x) - 65) + n ) mod 26) + 65)] ++ (casesarEncode xs n)
    -- | ((fromEnum x) <= 122) && ((fromEnum x) >= 97) = [toEnum ((((fromEnum(x) - 97) + n ) mod 26) + 97)] ++ (casesarEncode xs n)
    | ((fromEnum x) <= 90) && ((fromEnum x) >= 65) = ((fromEnum x) - 65) ++ casesarEncode xs n
    | otherwise = [x] ++ (casesarEncode xs n)



main = do
    print "Hello World"

    let result = (casesarEncode "Hello World" 3)
    print result