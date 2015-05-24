## These functions cache the inverse of a matrix.


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



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    ## Get a matrix that is the x inverse
    inverse <- mtx$getinv()

    ## Check and returns inverse if the inverse has already been calculated
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }

    ## Get the matrix from the object
    data <- mtx$get()

    ## Calculates the inverse by using solve function
    invserse <- solve(data, ...)

    ## Stores the inverse to the object for future use
    mtx$setinv(inverse)

    ## Return a matrix that is the inverse of 'x'
    return(inverse)
}
