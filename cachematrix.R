## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function is use to calculate inverse of non-squares and squares
makeCachematrix() <- function(x = matrix()){
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
  


## Write a short comment describing this function
# This function is use to get a cache data
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- Inverse(data, ...)
    x$setInverse(inv)
    inv
}
