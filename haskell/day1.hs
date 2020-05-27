import System.IO

main :: IO ()
main = do
    putStrLn "Success"
    

-- typing & declaring return tyle the function, within local scope
double :: Int -> Int
-- the function itself
double x = x + x

-- creates a factorial within the console
factorial :: Int -> Int
-- the functional definiton
factorial 0 = 1 -- default result for case where the incoming value is 0
factorial x = x * factorial (x - 1)

-- factorial w/Guards
factorialWG :: Int -> Int
-- kinda like switch statements in JS
-- matches cases for incoming arg to determine output.
factorialWG x
  | x > 1 = x * factorialWG (x - 1)
  | otherwise = 1