# Calculate the square of the sums of the first N natural numbers
# SquareOfSum ? Number
SquareOfSum ← ⁿ2/+⇡+1

# Calculate the sum of the squares of the first N natural numbers
# SumOfSquares ? Number
SumOfSquares ← /+ⁿ2⇡+1

# Calculate the difference between the square of sums and sum of squares
# DifferenceOfSquares ? Number
DifferenceOfSquares ← -⊃SumOfSquares SquareOfSum



