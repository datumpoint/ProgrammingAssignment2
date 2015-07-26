## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a Matrix like object that
## caches the solution to the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
                x <<- y
                inv <<- NULL
        }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## This function does the work of calculating the inverse
## of the matrix supplied, but only if there is not already a 
## cached solution

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
