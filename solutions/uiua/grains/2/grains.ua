# The number of grains on a square
# Grains ? Square
Square ← ⁿ:2-1⍤ "square must be between 1 and 64" (×⊃(≥1)(≤64)).
# The total number of grains on the board
# Total ?
Total ← /+rowsSquare +1⇡64






