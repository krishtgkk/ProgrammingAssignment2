## makeCacheMatrix creates a Matrixand cacheSolve returns inverse of the matrix.


## makeCacheMatrix takes a matrix as argument and returns a list of functions.

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function(x) x
  setInverse <- function(inversed_matrix) m <<- inversed_matrix
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## cacheSolve computes the Inverse of the function if the matrix is not found in the Cache.
## if found in cache then it returns the cached matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- a$getInverse()
  if(!is.null(m)) {
    message("getting cached matrix data")
    return(m)
  }
  data <- a$get(x)
  m <- solve(data, ...)
  a$setInverse(m)
  m
}
# Sample matrix variable for testing
asig_matrix <- matrix( c(1, 2, 3,4), nrow=2)
# List of functions returned after making call to makeCacheMatrix.
a <-makeCacheMatrix(asig_matrix)
# calling cacheSolve function for the first time computes the inverse of already not found
# If found data is returned from cache.

cacheSolve(asig_matrix)
