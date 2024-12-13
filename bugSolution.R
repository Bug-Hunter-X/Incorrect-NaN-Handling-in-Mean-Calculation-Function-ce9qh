```R
# Corrected function to handle vectors with only NA values
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  if (all(is.na(x))) {
    return(NA) # Handle vector with only NAs
  }
  sum_x <- sum(x, na.rm = TRUE) # Summing, removing NAs
  mean_x <- sum_x / length(x[!is.na(x)]) # Calculating the mean, considering only non-NA values
  return(mean_x)
}

# Test cases
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- numeric(0) # Empty vector
vec4 <- c(NA, NA, NA)

print(calculate_mean_corrected(vec1)) # Correct
print(calculate_mean_corrected(vec2)) # Correct
print(calculate_mean_corrected(vec3)) # Correct
print(calculate_mean_corrected(vec4)) # Correctly returns NA
```