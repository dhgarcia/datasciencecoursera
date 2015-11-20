## Cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {  
        x <<- y   ## create a matrix containing y
        inv <<- NULL
    }
    get <- function() x  ## get the created matrix
    setinv <- function(inverse) inv <<- inverse    ## set the matrix inverse for cache
    getinv <- function() inv    ## get the matrix inverse
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. 
## If the inverse has already been calculated 
## (and the matrix has not changed), 
## then `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()  ## get the matrix inverse
    if(!is.null(inv)) { 
        ## if inv is not null get the cache inverse matrix data
        message("getting cached data")
        return(inv)
    }
    ## If not cahed get the matrix x data and solve the inverse
    mat <- x$get()     
    message("computing the inverse of the matrix")
    inv <- solve(mat, ...)
    x$setinv(inv)
    inv
}
