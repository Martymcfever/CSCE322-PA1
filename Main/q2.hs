-- The exmp function takes a floating number as the base and an integer as the exponent and returns a floating point number.
-- The base case is when the exponent is zero means that the function returns 1.
-- There are two error cases: one where the exponent is negative and one where the base is zero.
-- Otherwise the function multiplies the base by a recursive call of exmp with the exponent minus 1.


exmp :: (Floating a, Eq a) => a -> Integer -> a
exmp x n 
    | n == 0 = 1
    | n < 0 =  error "Exponent must be non-negative"
    | x == 0 = error "Base cannot be 0"
    | otherwise = x * exmp x (n-1)



main = do
    print (exmp (0) (5))