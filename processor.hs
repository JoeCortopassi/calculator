data Operand = Operand Float
data Operator = Operator String
data Inputs = Inputs {
                    firstOperand :: Operand,
                    getOperator :: Operator,
                    secondOperand :: Operand
} deriving (Show)

processInputs :: String -> Inputs
processInputs [] = Inputs 0 "+" 0
processInputs input = -- break on whitespace, apply each item to the Inputs type constructor


-- the end result of the calculator should be that given an input like this: "3 * 4 + 6 * 3" it will return a parsed order of operations like so: "((3 * 4) + (6 * 3)) evaluates to 30"