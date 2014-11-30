lastDigit :: Integer -> Integer
lastDigit x = x `mod` 10

dropLastDigit :: Integer -> Integer
dropLastDigit x = x `div` 10

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = if x < 0 
	then [] 
	else (toDigits (dropLastDigit x)) ++ [(lastDigit x)]