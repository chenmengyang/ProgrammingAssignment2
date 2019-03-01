## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ivs <- NULL
        set <- function(y) {
                x <<- y
                ivs <<- NULL
        }
        get <- function() x
        setinverse <- function() ivs <<- solve(x)
        getinverse <- function() ivs
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ivs <- x$getinverse()
        if(!is.null(ivs)) {
                message("getting cached data")
                return(ivs)
        }
        data <- x$get()
        x$setinverse()
        x$getinverse()
}
