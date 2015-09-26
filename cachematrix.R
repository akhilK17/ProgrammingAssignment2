## Put comments here that give an overall description of what your
## functions do

## Matrix inversion is usually a costly computation and there may be some 
## benefits to caching the inverse of a matrix rather than compute it repeatadly
## Below are pair of functions that cache the inverse of a matrix.


## Write a short comment describing this function

## The following function creates a speial "matrix" object that can catch its
## inverse 

makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
                set <- function (y){
                        x <<- y
                        m <<- NULL
                }
                get <- function() x
                setmatrix <- function (matrix) m <<- matrix
                getmatrix <- function() m
                list(set =  set, get = get,
                     setmatrix = setmatrix,
                     getmatrix = getmatrix
                )

}


## Write a short comment describing this function

## The following function calculates the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed),then the cachesolve should retrieve the
## inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
                m <- x$getmatrix()
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setmatrix(m)
                m
}
