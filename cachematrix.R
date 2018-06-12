## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matr = matrix()) {
    i <- NULL
    set <- function(zz) {
        matr <<- zz
        i <<- NULL
    }
    get <- function() matr
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
		)
}


## Write a short comment describing this function

cacheSolve <- function(matr, ...) {
    i <- matr$getinverse()
    if (!is.null(i)) {
        return(i)
    }
    data <- matr$get()
    i <- solve(data, ...)
    matr$setinverse(i)
    i
}
