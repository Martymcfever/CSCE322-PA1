

capitalReverse :: String -> String
capitalReverse [] = []
capitalReverse (x:xs)
            | x == 'a' = capitalReverse xs ++ ['A']
            | x == 'b' = capitalReverse xs ++ ['B']
            | x == 'c' = capitalReverse xs ++ ['C']
            | x == 'd' = capitalReverse xs ++ ['D']
            | x == 'e' = capitalReverse xs ++ ['E']
            | x == 'f' = capitalReverse xs ++ ['F']
            | x == 'g' = capitalReverse xs ++ ['G']
            | x == 'h' = capitalReverse xs ++ ['H']
            | x == 'i' = capitalReverse xs ++ ['I']
            | x == 'j' = capitalReverse xs ++ ['J']
            | x == 'k' = capitalReverse xs ++ ['K']
            | x == 'l' = capitalReverse xs ++ ['L']
            | x == 'm' = capitalReverse xs ++ ['M']
            | x == 'n' = capitalReverse xs ++ ['N']
            | x == 'o' = capitalReverse xs ++ ['O']
            | x == 'p' = capitalReverse xs ++ ['P']
            | x == 'q' = capitalReverse xs ++ ['Q']
            | x == 'r' = capitalReverse xs ++ ['R']
            | x == 's' = capitalReverse xs ++ ['S']
            | x == 't' = capitalReverse xs ++ ['T']
            | x == 'u' = capitalReverse xs ++ ['U']
            | x == 'v' = capitalReverse xs ++ ['V']
            | x == 'w' = capitalReverse xs ++ ['W']
            | x == 'x' = capitalReverse xs ++ ['X']
            | x == 'y' = capitalReverse xs ++ ['Y']
            | x == 'z' = capitalReverse xs ++ ['Z']
            | otherwise = capitalReverse xs ++ [x]






main = do
    putStrLn "Hello World!"
    let result = capitalReverse "Hello World!"
    putStrLn result