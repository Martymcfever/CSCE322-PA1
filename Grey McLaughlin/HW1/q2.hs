exmp :: (Floating a, Eq a) => a -> Integer -> a
exmp x n 
    | n == 0 = 1
    | n < 0 =  error "Exponent must be non-negative"
    | x == 0 = error "Base cannot be 0"
    | otherwise = x * exmp x (n-1)



main = do
    print (exmp (3) (2))