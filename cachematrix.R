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
    setinv <- function(cacheSolve) m <<- cacheSolve
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## This function does the work of calculating the inverse
## of the matrix supplied.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
