# H2O All Methods 

* h2o.downloadCSV : Download a H2O dataset to a CSV file on a local disk.

* h2o.exportFile: ExpExport H2O Data Frame to a file

* h2o.importFile: Import a file from the local path and parse it.

* h2o.parseRaw: Parse a raw data file

* h2o.uploadFile: Upload a file from the local drive and parse it.

# Native R to H2O Coercion

* as.h2o: Convert an R object to an H2O object.

# H2O to Native R Coercion

* as.data.frame: Check if an object is a data frame, or coerce it if possible.

# Data Generation

* h2o.createFrame: Create an H2O data frame, with optional

# randomization.
* h2o.runif: Produce a vector of random uniform numbers.

* h2o.interaction: Create interaction terms between categorical features
  of an H2O Frame.

# Data Sampling/Splitting
* h2o.splitFrame: Split an existing H2O dataset    according to user-specified ratios.

# Missing Data Handling
* h2o.impute: Impute a column of data using the   mean, median, or mode.

* h2o.insertMissingValues: Replaces a   user specified fraction of entries
  in a H2O dataset with missing values.


# General Data Operations

* head, tail: Return the First or Last Part of   an Object.
# Math (H2O)
* abs: Compute the absolute value of x.
* sign: Return a vector with the signs of the corresponding elements of x (the
  sign of a real number is 1, 0, or -1 if the number is positive, zero, or negative, respectively).

* sqrt: Computes the principal square root of x, √x.

* ceiling: Take a single numeric argument x and return a numeric vector
  containing the smallest integers not less than the corresponding elements of x.

* floor: Take a single numeric argument x and return a numeric vector
  containing the largest integers not greater than the corresponding elements of x.

* trunc: Take a single numeric argument x and return a numeric vector
  containing the integers formed by truncating the values in x toward 0.

* log: Compute logarithms (by default, natural logarithms).
* exp: Compute the exponential function.

# Math (generic)
* cummax: Display a vector of the cumulative maxima of the elements of the argument.
* cummin: Display a vector of the cumulative minima of the elements of the argument.
* cumprod: Display a vector of the cumulative products of the elements of the argument.
* log10: Compute common (i.e., base 10) logarithms

* log2: Compute binary (i.e., base 2) logarithms.

* log1p: Compute log(1+x) accurately also for |x|<< 1.

* acos: Compute the trigonometric arc-cosine.

* acosh: Compute the hyperbolic arc-cosine.

* asin: Compute the trigonometric arc-sine.

* asinh: Compute the hyperbolic arc-sine.

* atan: Compute the trigonometric arc-tangent.

* atanh: Compute the hyperbolic arc-tangent.

* expm1: Compute exp(x) - 1 accurately also for |x|<< 1.

* cos: Compute the trigonometric cosine.

* sinh: Compute the hyperbolic sine.

* sinpi: Compute the trigonometric two-argument arc-sine.

* tan: Compute the trigonometric tangent.

* tanh: Compute the hyperbolic tangent.

* tanpi: Compute the trigonometric two-argument arc-tangent.

* gamma: Display the gamma function γx

* lgamma: Display the natural logarithm of the absolute value of the gamma function.

* digamma: Display the first derivative of the logarithm of the gamma function.

* trigamma: Display the second derivative of the logarithm of the gamma function.

# Math2 (H2O)

* round: Round the values to the specified number of decimal places. The default is 0.

* signif: Round the values to the specified number of significant digits.
# Summary (H2O)

* max: Display the maximum of all the input arguments.
* min: Display the minimum of all the input arguments.
* range: Display a vector containing the minimum and maximum of all the given arguments.
* sum: Calculate the sum of all the values present in its arguments.
# Summary (generic)
* prod: Display the product of all values present in its arguments.
* any: Given a set of logical vectors, determine if at least one of the values is true.
* all: Given a set of logical vectors, determine if all of the values are true.
# Other Aggregations
# Non-Group Generic Summaries
* mean: Generic function for the (trimmed) arithmetic mean.
* sd: Calculate the standard deviation of a column of continuous real valued data.
* var: Compute the variance of x.
* summary: Produce result summaries of the results of various model fitting functions.
* quantile: Obtain and display quantiles for H2O parsed data. Row / Column Aggregation
* apply: Apply a function over an H2O parsed data object (an array). Group By Aggregation
* h2o.group by: Apply an aggregate function to each group of an H2O dataset.
# Tabulation
* h2o.table: Use the cross-classifying factors to build a table of counts at each combination of factor levels.
# Data Munging
# General Column Manipulations
* is.na: Display missing elements.
# Element Index Selection
* h2o.which: Display the row numbers for which the condition is true.
# Conditional Element Value Selection
* h2o.ifelse: Apply conditional statements to numeric vectors in H2O parsed data objects.


# Numeric Column Manipulations

* h2o.cut: Convert H2O Numeric Data to Factor.

# Character Column Manipulations
* h2o.strsplit: Splits the given factor column on the input split.
* h2o.tolower: Change the elements of a character vector to lower case.
* h2o.toupper: Change the elements of a character vector to lower case.
* h2o.trim: Remove leading and trailing white space.
* h2o.gsub: Match a pattern & replace all instances of the matched pattern with the replacement string globally.
* h2o.sub: Match a pattern & replace the first instance of the matched pattern with the replacement string.

# Factor Level Manipulations
*h2o.levels: Display a list of the unique values found in a column of categorical data.

# Date Manipulations
* h2o.month: Convert the entries of a H2OParsedData object from milliseconds to months (on a 0 to 11 scale).
* h2o.year: Convert the entries of a H2OParsedData object from milliseconds to years, indexed starting from 1900.

# Matrix Operations 
* %∗%: Multiply two matrices, if they are conformable. 
* t: Given a matrix or data.frame x, t returns the transpose of x.
# Data Modeling
# Model Training: Supervised Learning
* h2o.deeplearning: Perform Deep Learning neural networks on an
* H2OParsedData object.
* h2o.gbm: Build gradient boosted classification trees and gradient boosted regression trees on a parsed dataset.
* h2o.glm: Fit a generalized linear model, specified by a response variable, a set of predictors, and a description of the error distribution.

