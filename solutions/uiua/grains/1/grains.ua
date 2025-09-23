# The number of grains on a square
# Grains ? Square
Square ← ⍤ "square must be between 1 and 64" (×⊃(≥1)(≤64).)
# The total number of grains on the board
# Total ?
Total ← |0 /+ Square+1⇡64