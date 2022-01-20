;--------------------------------------------
;   тестовый файл для изучения тонкостей
;--------------------------------------------

ExpressionTrue := true
ExpressionFalse := false

VariableTrue = true + %ExpressionTrue%
VariableFalse = false + %ExpressionFalse%

MsgBox, ExpressionTrue = %ExpressionTrue% | ExpressionFalse = %ExpressionFalse%
MsgBox, VariableTrue = %VariableTrue% | VariableFalse = %VariableFalse%