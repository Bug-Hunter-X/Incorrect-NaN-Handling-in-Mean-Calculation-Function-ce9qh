```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) # Summing, removing NAs
  mean_x <- sum_x / length(x) # Calculating the mean
  return(mean_x)
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- numeric(0) # Empty vector

print(calculate_mean(vec1)) # Correct
print(calculate_mean(vec2)) # Correct
print(calculate_mean(vec3)) # Correct

# The bug is triggered when the vector contains only NA values.
vec4 <- c(NA, NA, NA)
print(calculate_mean(vec4)) # Incorrectly returns NaN instead of NA
```