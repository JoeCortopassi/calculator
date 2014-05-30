import Data.Char (digitToInt)


main = promptFirst


promptFirst :: IO ()
promptFirst = putStrLn "\n\nWhat is your first operand?"
              >> getLine
              >>= \operand -> promptSecond (inputToNumber operand)
              
promptSecond :: Float -> IO ()
promptSecond firstOperand = putStrLn "What is your second operand?"
                            >> getLine
                            >>= \operand -> showSum firstOperand (inputToNumber operand)
                            
showSum :: Float -> Float -> IO ()
showSum firstOperand secondOperand    = putStrLn ("\nThe sum of " ++ firstNum ++ " and " ++ secondNum ++ " is " ++ newsum )
                                        >> promptFirst
                                        where newsum = show (firstOperand + secondOperand)
                                              firstNum = show firstOperand
                                              secondNum = show secondOperand
                                        
                                        
inputToNumber :: String -> Float
inputToNumber [] = 0
inputToNumber input = read input :: Float

