## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
	## Initializing the inverse property
    inverse <- NULL

    ## Method to set the matrix
    set <- function(x) {
        mtx <<- x
        inverse <<- NULL
    }

    ## Method to get the matrix
    get <- function() { return(mtx) }

    ## Method to set the inverse of the matrix
    setinv <- function(inv) { inverse <<- inv }

    ## Method to get the inverse of the matrix
    getinv <- function() { return(inverse) }

    ## Returns the list of methods
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
