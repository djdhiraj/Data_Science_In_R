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

