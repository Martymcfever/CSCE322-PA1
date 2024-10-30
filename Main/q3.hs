-- caseserEncode takes the characters that are upper or lowercase letters and adds the shift number to them based on their ascii values.
-- Other characters besides letters are put into the string as normal.
casesarEncode :: String  -> Int -> String
casesarEncode [] n  = []
casesarEncode (x:xs) n
    | (((fromEnum x) <= 90) && ((fromEnum x) >= 65)) = [toEnum ((((((fromEnum x) - 65) + n)) `mod` 26) + 65)] ++ casesarEncode xs n
    | (((fromEnum x) <= 122) && ((fromEnum x) >= 97)) = [toEnum ((((((fromEnum x) - 97) + n)) `mod` 26) + 97)] ++ casesarEncode xs n
    | otherwise = [x] ++ (casesarEncode xs n)

-- caseserDecode takes the characters that are upper or lowercase letters and subtracts the shift number to them based on their ascii values.
-- Other characters besides letters are put into the string as normal.
casesarDecode :: String  -> Int -> String
casesarDecode [] n  = []
casesarDecode (x:xs) n
    | (((fromEnum x) <= 90) && ((fromEnum x) >= 65)) = [toEnum ((((((fromEnum x) - 65) - n)) `mod` 26) + 65)] ++ casesarDecode xs n
    | (((fromEnum x) <= 122) && ((fromEnum x) >= 97)) = [toEnum ((((((fromEnum x) - 97) - n)) `mod` 26) + 97)] ++ casesarDecode xs n
    | otherwise = [x] ++ (casesarDecode xs n)




main = do
    print "Hello World!"

    let result = (casesarEncode "Hello World!" 3)
    print result

    let result2 = (casesarDecode "Khoor Zruog!" 3)
    print result2