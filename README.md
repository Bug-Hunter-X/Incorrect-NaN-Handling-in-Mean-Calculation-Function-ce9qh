# R Bug: Incorrect NaN Handling in Mean Calculation

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector.  The function incorrectly handles vectors containing only NA (Not Available) values, returning NaN (Not a Number) instead of NA.

The `bug.R` file contains the erroneous code. The `bugSolution.R` file provides a corrected version.

This bug highlights the importance of robustly handling missing data in statistical computations.  The solution emphasizes the need for thorough edge-case testing during function development.

## How to Reproduce
1. Clone this repository.
2. Open `bug.R` and execute the code.
3. Observe the incorrect output for the vector containing only NAs.
4. Compare with the corrected output in `bugSolution.R`.